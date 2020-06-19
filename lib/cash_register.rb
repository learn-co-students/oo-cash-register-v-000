require 'pry'
class CashRegister

  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items

  attr_accessor :price
  attr_accessor :quantities

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
  end

  def add_item(title, price, quantities=1)

    quantities.times do
    @items << title
    end
    @total += price*quantities
    @price = price
    @quantities = quantities
    #binding.pry
  end

  def void_last_transaction
    @total -=@price*@quantities
    #binding.pry
  end


  def apply_discount
      distotal = @total*(100-@discount)/100
    if distotal != @total
      #binding.pry
      @total = distotal
      "After the discount, the total comes to $#{distotal}."
    else
      "There is no discount to apply."
    end
  end
end
