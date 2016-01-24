require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_trans

  @@items = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @last_trans = 0
  end

  def items
    @@items
  end

  def add_item(title, price, quantity = 1)
    total += (price * quantity)
    last_trans = price
    @@items << title
  end

  def apply_discount
    if discount != nil
      total = total -  discount
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    total -= last_trans
  end



end
