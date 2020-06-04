require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)
    quantity.times do
      @items << title
    end
    @last_transaction = [title, price, quantity]
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total/(100/@discount))
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    title, price, quantity = @last_transaction[0], @last_transaction[1], @last_transaction[2]
    @total -= price*quantity
    quantity.times do
      @items = @items.slice!(-1)
    end
  end

end
