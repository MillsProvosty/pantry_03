require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def setup
    @butter = Ingredient.new({name: "Butter", unit: 1, calories: 300})
  end

  def test_ingredient_exists
    assert_instance_of Ingredient, @butter
  end

  def test_ingredient_has_attributes
    assert_equal "Butter", @butter.name
    assert_equal 1, @butter.unit
    assert_equal 300, @butter.calories
  end
end
