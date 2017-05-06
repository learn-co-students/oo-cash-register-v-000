<<<<<<< HEAD
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(name, price, quantity=1)
    self.last_transaction = price
    self.total += price * quantity
    quantity.times do
      self.items << name
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total -= self.total * self.discount / 100
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
>>>>>>> redo
end
