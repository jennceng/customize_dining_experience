# dream feature: list items and show a visual representation of how well liked it is
  # dream feature: show if certain groups of ingredients show similar patterns
  # dream feature: show if certain pairings are well received

require "rails_helper"

feature "user sees a list of ingredients" do
  scenario "sees a list of ingredients" do
    hot_peppers = Ingredient.create(name: 'hot peppers')
    mushrooms = Ingredient.create(name: 'mushrooms')

    visit ingredients_path
    expect(page).to have_content hot_peppers.name
    expect(page).to have_content mushrooms.name
  end

  # add an ajax feature later?
  scenario "user can add a new ingredient from the index page" do
    visit ingredients_path
    expect(page).to have_content "Add New Ingredient"
    fill_in "Ingredient", with: 'leeks'
    click_on "Add"
    expect(page).to have_content "leeks"
  end

  # show error for blank entry

end
