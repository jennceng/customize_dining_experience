require "rails_helper"

# add an ajax feature later?
feature "user can add a new ingredient" do
  scenario "user successfully adds a new ingrededient" do
    visit ingredients_path
    click_on "Add New Ingredient"
    expect(page).to have_content "New Ingredient:"
    fill_in "Name", with: 'leeks'
    click_on "Add"
    expect(page).to have_content "Ingredients"
    expect(page).to have_content "leeks"
  end

  # errors for blank or repeat ingredients?
end

# show error for blank entry
