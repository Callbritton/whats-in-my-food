require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'returns a objects for a given query', :vcr do
    food = 'potato'

    results = FoodFacade.fetch_member_data(food)

    expect(results).to be_an(Array)
    expect(results.first).to be_a(Food)
    expect(results.first.description).to be_a(String)
  end
end
