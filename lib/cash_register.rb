require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    item_titles = Array.new(quantity,title)
    self.last_transaction[:titles] = item_titles
    self.last_transaction[:price] = price * quantity
    self.items << item_titles
    self.items = self.items.flatten
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      discount_rate = self.discount / 100.to_f
      discount_amount = self.total * discount_rate
      self.total -= discount_amount
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.items.pop(self.last_transaction[:titles].length)
    self.total -= self.last_transaction[:price]
    self.items
  end

end
