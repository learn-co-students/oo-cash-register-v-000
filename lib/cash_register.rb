require 'pry'

class CashRegister
  attr_accessor :total, :discount, :total, :items, :last_item_amount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      self.items << item
      self.last_item_amount = price
    end
    self.total += (quantity * price)
  end

  def apply_discount
    if discount == nil
      "There is no discount to apply."
    else
      @total = (@total.to_f * ((100-@discount.to_f)/100)).to_i
      message = "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_item_amount
  end

end
