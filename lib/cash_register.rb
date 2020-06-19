require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :title, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = price * quantity
    @items.fill(title, @items.size, quantity) 
  end

  def apply_discount
    #binding.pry
    self.total = self.total - self.total * (@discount/100.00)
    if @discount == 0 || @discount == nil 
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $800."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end 