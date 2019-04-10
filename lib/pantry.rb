class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_arg)
    if @stock = {}
      return 0
    else
      if @stock.include?(ingredient_arg)
        return quantity
      end
    end
  end

  def restock(ingredient_arg, quantity)
    @stock[ingredient_arg] += quantity
  end


end
