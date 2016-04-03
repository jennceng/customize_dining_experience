require "rails_helper"

# add an ajax feature later?
feature "user can add a new customer" do
  scenario "user successfully adds a new customer" do
    visit customers_path
    click_on "Add New Customer"
    expect(page).to have_content "New Customer Form"
    fill_in "First Name", with: 'Michael'
    fill_in "Last Name", with: 'Bluth'
    click_on "Add"
    expect(page).to have_content "Bluth, Michael"
  end

  # errors for blank or repeat ingredients?
end

# show error for blank entry
