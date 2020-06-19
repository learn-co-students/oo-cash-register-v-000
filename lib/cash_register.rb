require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction_total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    self.apply_discount
  end

  def add_item(title, price, quantity=1)
    @last_transaction_total = price * quantity
    @total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_percent = @discount.to_f / 100
      self.total -= self.total * discount_percent
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction_total
  end

end
