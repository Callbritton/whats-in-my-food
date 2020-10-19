class FoodFacade
  def self.fetch_food_data(food)
    parsed = FoodService.food_information(food)
    parsed[:foods].map do |f|
      Food.new(f)
    end
  end
end
