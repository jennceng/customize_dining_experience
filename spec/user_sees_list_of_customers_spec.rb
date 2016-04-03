require "rails_helper"

# [] a customer should have a first and last name
# [] the list of customers should be listed alphabetically by last name?


feature "user sees a list of customers" do
  scenario "sees a list of customers and a link for a new cusotmer" do
    miguel = Customer.create(first_name: 'Miguel', last_name: 'Cua')
    dan = Customer.create(first_name: 'Dan', last_name: 'Taft')
    krissy = Customer.create(first_name: 'Krissy', last_name: 'Churchill')

    visit customers_path
    expect(page).to have_content "List of Customers:"
    expect(page).to have_link "Taft, Dan"
    click_on "Add New Customer"
    expect(page).to have_content "New Customer Form"

  end

  scenario "clicks customer and is taken to a show page for that customer" do
    dan = Customer.create(first_name: 'Dan', last_name: 'Taft', vip: true)
    hot_peppers = Ingredient.create(name: 'hot peppers')
    mushrooms = Ingredient.create(name: 'mushrooms')
    preference1 = Preference.create(customer: dan, ingredient: mushrooms, likes: true)
    preference1 = Preference.create(customer: dan, ingredient: hot_peppers, likes: false)

    visit customers_path
    click_on "Taft, Dan"
    expect(page).to have_content "This customer is a VIP! Take good care of them"
    expect(page).to have_content "This customer does not enjoy"
    expect(page).to have_content "This customer prefers"
    expect(page).to have_content hot_peppers.name
    expect(page).to have_content mushrooms.name
  end

end
