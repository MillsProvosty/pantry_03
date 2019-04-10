class Recipe
  attr_reader :name,
              :ingredients
  def initialize(name)
    @name = name
    @ingredients = {}
  end

  def add_ingredient(ingredients, quantity)
    @ingredients[ingredients] = quantity
  end

  def list_ingredients
    ingredient_list = []
    @ingredients.each do |ingredient, quantity|
      ingredient_list << ingredient.name
    end.flatten
    ingredient_list
  end

  def quanitity_available(ingredient_arg)
    @ingredients.each do |key, value|
      if key == ingredient_arg && value >= 1
        return true
      else
        return false
      end
    end
  end

  def total_calories
    all_the_calories = 0
    @ingredients.each do |key, value|
      all_the_calories += key.calories
    end
      all_the_calories
  end
end
