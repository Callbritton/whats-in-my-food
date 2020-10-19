class Food
attr_reader :code, :description, :brand, :ingredients

  def initialize(attr)
    @code = attr[:gtinUPC]
    @description = attr[:description]
    @brand = attr[:brandOwner]
    @ingredients = attr[:ingredients]
  end
end
