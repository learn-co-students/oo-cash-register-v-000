require 'pry'
class CashRegister
  attr_accessor :total, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
    @items << item
    @total += price
    end
  end

  def apply_discount
    if @discount
    @total -= @total*(@discount*0.01)
    "After the discount, the total comes to $#{@total.floor}."
    else
     "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
    @items = []
  end

end