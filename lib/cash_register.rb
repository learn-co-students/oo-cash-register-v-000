
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end# of iniiialize

  def total
    @total
  end# of total


  def add_item(title, price, quantity = nil)
    @transaction = price
    if quantity != nil
      self.total += quantity * price
      (quantity).times {@items << title }
    else
       self.total += price
       @items << title
    end# of if
  end# of add_item

  def apply_discount
    if discount != nil
      percentage = discount * 0.01
      @total-= percentage*@total
      "After the discount, the total comes to $#{sprintf("%g", @total)}."
    else
      "There is no discount to apply."
    end# of if
  end# of apply_discountsp

  def items
    @items
  end#of items

  def void_last_transaction
    @total -= @transaction
  end# of void

end# of class
