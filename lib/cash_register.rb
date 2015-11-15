require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :prices

  def initialize(discount = 0)
    @discount = discount.to_f
    @total = 0.00
    @items = []
    @prices = []
  end

  def add_item(item,price,quantity = 1)
    @total += (price * quantity)
    quantity.times do 
      @items << item
      @prices << price
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total * (1 - discount/100)  
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= prices.pop
  end

end