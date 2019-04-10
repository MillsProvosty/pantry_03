require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class RecipeTest < Minitest::Test
  def setup
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_recipe_exists
    assert_instance_of Recipe, @mac_and_cheese
  end

  def test_recipe_has_attributes
    assert_equal "Mac and Cheese", @mac_and_cheese.name
  end

  def test_ingredients_returns_empty_hash
    assert_equal ({}), @mac_and_cheese.ingredients
  end

  def test_add_ingredient
    @mac_and_cheese.add_ingredient(@mac, 2)
    @mac_and_cheese.add_ingredient(@cheese, 8)
    expected = {
                @mac => 2,
                @cheese => 8
              }
    assert_equal expected, @mac_and_cheese.ingredients
  end

  def test_list_ingredients
    @mac_and_cheese.add_ingredient(@mac, 2)
    @mac_and_cheese.add_ingredient(@cheese, 8)
    assert_equal ["Macaroni", "Cheese"], @mac_and_cheese.list_ingredients
  end

  def test_it_can_check_quanity_available
    @mac_and_cheese.add_ingredient(@mac, 2)
    @mac_and_cheese.add_ingredient(@cheese, 8)
    assert_equal false, @mac_and_cheese.quanitity_available(@cheese)
  end

  def test_it_can_find_total_calories_in_dish
    @mac_and_cheese.add_ingredient(@mac, 2)
    @mac_and_cheese.add_ingredient(@cheese, 8)
    assert_equal 250, @mac_and_cheese.total_calories
  end
end
