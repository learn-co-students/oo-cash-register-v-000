
require "pry"
class CashRegister
  attr_accessor :items, :title, :price, :quantity, :total, :discount, :last_transaction
  @@total = 0
  @@items = []

  def initialize(discount = 0)
    @title = title
    @price = price
    @total = 0
    @@items = []
    #@last_transaction = last_transaction
    @discount = discount
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    quantity.times do @@items << title
    end
    @last_transaction = price*quantity

  end

  def apply_discount
    if discount != 0
      @total = @total - (@total*(@discount/100.00)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
