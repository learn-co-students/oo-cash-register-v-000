require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    self.total += @last_transaction
    quantity.times do
      items << title
    end
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

  def apply_discount
    #binding.pry
    if self.discount > 0
      self.total -= self.total * (self.discount / 100.to_f)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end

  end

end
