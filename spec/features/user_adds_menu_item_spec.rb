require 'spec_helper'

describe 'a user adds a new menu item' do

  # ACCEPTANCE CRITERIA
  # I can add menu item
  # I must provide a name
  # I must provide a description
  # I must provide a price
  # I can see my new menu item

  it 'creates a new menu item' do
    name = 'pizza'
    description = 'a delicious cheesy surprise'
    cost = 1001

    visit new_menu_item_path
    fill_in "Name", with: name
    fill_in "Description", with: description
    fill_in "Price in cents", with: cost
    click_on "Create Menu item"

    expect(page).to have_content name
    expect(page).to have_content description
    expect(page).to have_content "$10.01"
  end

  context "with invaid attributes" do
    it 'sees applicable errors' do
      visit new_menu_item_path

      click_on "Create Menu item"

      expect(page).to have_content "Name can't be blank"
      expect(page).to have_content "Description can't be blank"
      expect(page).to have_content "Price in cents can't be blank"
    end
  end
end
