require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.total = (total * (1 - (discount.to_f / 100))).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @last_transaction
  end

end
