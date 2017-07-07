# require 'pry'

class CashRegister
  attr_accessor :total, :items, :last_transaction_amount
  attr_reader :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = nil)
    if quantity.nil?
     self.total += price
     self.last_transaction_amount = price
     @items << title
    else
      self.total = self.total + (price * quantity)
      self.last_transaction_amount = price * quantity
      quantity.times {@items << title}
    end
  end

  def apply_discount
    if self.discount.nil?
      "There is no discount to apply."
    else
      calculated_discount = self.discount.to_f/100
      total_discount =  @total * calculated_discount
      self.total = self.total - total_discount.to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction_amount
  end
end
