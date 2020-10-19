require 'rails_helper'

feature "user can search for specific food" do
  scenario "user submits valid query" do

    visit '/'

    fill_in :q, with: 'sweet potatoes'

    click_on "Search"

    expect(current_path).to eq(foods_path)

    expect(page).to have_content("Results: 10")

    code = "070560951975"
    description="SWEET POTATOES"
    brand = "The Pictsweet Company"
    ingredients="SWEET POTATOES."

    within("#food-info-600987") do
      expect(page).to have_content(code)
      expect(page).to have_content(description)
      expect(page).to have_content(brand)
      expect(page).to have_content(ingredients)
    end
  end
end
