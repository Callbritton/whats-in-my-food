class FoodService

  def self.food_information(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["FOOD_API_KEY"]
    end
  end
end
