require 'rails_helper'

feature "user can search for specific food" do
  scenario "user submits valid query" do

    visit '/'

    fill_in :q, with: 'sweet potatoes'
    click_on "Search"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("10 Results")

    expect(page).to have_css(".food", count: 10)

    # within(first(".food")) do
    #   expect(page).to have_content("Description")
    #   expect(page).to have_content("Ingredients")
    # end
  end
end