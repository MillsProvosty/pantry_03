require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class PantryTest < Minitest::Test

  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
  end

  def test_pantry_exists
    assert_instance_of Pantry, @pantry
  end

  def test_stock_returns_empty_hash
    assert_equal ({}), @pantry.stock
  end

  def test_check_stock_checks_for_ingredient
    assert_equal 0, @pantry.stock_check(@cheese)
  end

  def test_restock_adds_ingredients_to_pantry
    @pantry.restock(@cheese, 5)
    @pantry.restock(@cheese, 10)
    assert_equal 15, @pantry.stock_check(@cheese)
  end
end
