require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    @total +=  price * quantity
    @items.fill(@title, @items.size, @quantity)
    @transactions << price 

  end

  def apply_discount
    #binding.pry
    @total -= @total * (@discount * 0.01)
    if discount != 0
      "After the discount, the total comes to $#{@total.ceil}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @transactions.pop
  end

end
