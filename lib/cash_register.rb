require 'pry'
class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    new_total = total + price * quantity
    self.last_transaction = price * quantity
    self.total = new_total
    self.total
    counter = 0
    while counter < quantity do
    self.items << item
    counter += 1
  end
  end

    def apply_discount
      new_total = self.total - (self.total*discount/100)
      self.total = new_total
      if self.discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{self.total}."
      end
    end

    def void_last_transaction
      new_total = self.total - self.last_transaction
      self.total = new_total
    end
end
