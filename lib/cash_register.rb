require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = Array.new
    @transactions = Array.new
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    @items.fill(title, @items.size, quantity)
    @transactions << price
  end

  def apply_discount
    if discount != 0
      discount_in_dollars = @total*discount/100
      self.total -= discount_in_dollars
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @transactions[@transactions.length-1]
  end
end
