require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items_array, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
  end





  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    i = 0
    while i < quantity
      self.items_array << title
      i += 1
    end

    self.last_transaction = price * quantity
    puts "#{self.last_transaction}"
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total -= (self.discount*self.total/100)}."
    end
  end

  def items
    self.items_array
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
