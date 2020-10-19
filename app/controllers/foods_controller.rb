class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.fetch_food_data(params[:q]).first(10)
  end
end
