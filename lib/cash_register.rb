
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    self.items = []
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @items ||= []
    counter = 0
    until counter == quantity
      self.items << item
      counter += 1
    end
    self.last_transaction = price * quantity
    self.total += price * quantity
  end

  def apply_discount
    proper_discount = self.total * discount/100
    self.total -= proper_discount
    if discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
