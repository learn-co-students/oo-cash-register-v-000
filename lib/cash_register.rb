require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  @@transaction = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price=0, quantity=1)
    self.total += price*quantity
    quantity.times do
      @items << item
    end
    @@transaction << self.total
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total - (self.discount*10)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @@transaction[-1]
  end

end
