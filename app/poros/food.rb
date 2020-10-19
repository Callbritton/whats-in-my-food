class Food
attr_reader :id, :code, :description, :brand, :ingredients

  def initialize(attr)
    @id = attr[:fdcId]
    @code = attr[:gtinUpc]
    @description = attr[:description]
    @brand = attr[:brandOwner]
    @ingredients = attr[:ingredients]
  end
end
