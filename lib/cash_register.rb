require 'pry'

class CashRegister
  attr_accessor :discount, :total, :previous_total, :items

  def initialize(discount = nil)
    @discount = discount
    @previous_total = 0
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    update_total(price, quantity)

    quantity.times do
      @items << item
    end
  end

  def update_total(price, quantity)
    self.previous_total = self.total
    self.total += price * quantity
  end

  def apply_discount
    if discount
      self.previous_total = self.total
      self.total = self.total.to_f - (self.total.to_f * (discount.to_f / 100.0))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.previous_total
  end

end
