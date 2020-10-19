class FoodsController < ApplicationController
  def index
    search = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["FOOD_API_KEY"]
    end

    response = conn.get("/fdc/v1/foods/search?query=#{search}")

    parsed = JSON.parse(response.body, symbolize_names: true)
    @foods = fetch_food_data(parsed)

  end

  def fetch_food_data(parsed)
    parsed[:foods].map do |food|
      Food.new(food)
    end
  end
end
