# add option to add more than one preference at a time...

require "rails_helper"

feature "user adds a new preference to a customer profile" do

  scenario "user sees a dropbox of existing ingredients and adds a new preference" do
    dan = Customer.create(first_name: 'Dan', last_name: 'Taft')
    hot_peppers = Ingredient.create(name: 'hot peppers')
    mushrooms = Ingredient.create(name: 'mushrooms')
    thyme = Ingredient.create(name: 'thyme')

    visit customer_path(dan)
    # save_and_open_page
    select 'thyme', from: "preference_ingredient_id"
    choose "Enjoyed"
    click_on "Submit"
    expect(page).to have_content 'thyme'
  end

end
