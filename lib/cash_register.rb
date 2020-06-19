require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @title = []
  end

  def add_item(title, price, opt=1)
    @title += [title]*opt
    @last_transaction = price
    @total += (price*opt)
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total -= discount*10}."
    end
  end

  def items
    items = []
    items = self.title
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end