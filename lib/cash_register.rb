class CashRegister
  require 'pry'
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @items << item.split * quantity
    self.items = @items.flatten
    self.last_transaction = price * quantity

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      self.total = @total * (100 - @discount)/100
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
