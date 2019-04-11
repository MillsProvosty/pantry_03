class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_arg)
    @stock[ingredient_arg]
  end

  def restock(ingredient_arg, quantity)
    @stock[ingredient_arg] += quantity
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients.length == @stock.length
  end


end
