class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_arg)
    @stock.each do |key, value|
      if key == ingredient_arg
       value
     else
        return 0
      end
    end
  end

  def restock(ingredient_arg, quantity)
    @stock[ingredient_arg] += quantity
  end


end
