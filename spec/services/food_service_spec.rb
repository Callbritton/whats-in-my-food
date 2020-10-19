require 'rails_helper'

RSpec.describe FoodService do
  it 'fetch food data by query' do
    search_results = FoodService.food_information('sweet potatoes')
    expect(search_results).to be_a(Hash)
    expect(search_results).to have_key :foods

    foods = search_results[:foods]
    expect(foods).to be_an(Array)

    next_result = foods.first

    expect(next_result).to have_key :description
    expect(next_result[:description]).to be_a(String)

    expect(next_result).to have_key :gtinUpc
    expect(next_result[:gtinUpc]).to be_a(String)

    expect(next_result).to have_key :brandOwner
    expect(next_result[:brandOwner]).to be_a(String)

    expect(next_result).to have_key :ingredients
    expect(next_result[:ingredients]).to be_a(String)
  end
end
