require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount > 0
      discounted = discount.to_f/100
      applied_discount = self.total * discounted
      self.total = self.total - applied_discount
        "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    new_register = []
    @items.each do |item|
      new_register << item
    end
    new_register
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
