require 'rails_helper'

feature "user can search for food details" do

  scenario "user submits valid food name" do
    visit '/'

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq(food_search_path)
    expect(page).to have_content("246 Results")
    expect(page).to have_css(".food-result", count: 10)

    within(first(".food-result")) do
      expect(page).to have_css(".gtin-upc-code")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brand-owner")
      expect(page).to have_css(".ingredients")
    end
  end
end
