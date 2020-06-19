
require 'pry'
require 'mathn'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @items = Array.new
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times do |q|
      self.items << title
    end
    # quantity == 1 ? @items << title : @items << ((title + " ") * quantity).split
    self.last_transaction = (price * quantity)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * (self.discount/100))
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end


