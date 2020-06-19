require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    total - discount
  end

  def add_item(title, price, quantity = 1)
    @price = price
    number_of_items = 0

    while number_of_items <= quantity - 1
      number_of_items += 1
      @items << title
    end

    self.total += (price * quantity)
  end

  def apply_discount
    if discount.nil?
      "There is no discount to apply."
    else
      self.total = total - (discount/0.1).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.price
  end
end
