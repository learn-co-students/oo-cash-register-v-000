class CashRegister
  attr_accessor :total, :discount, :items, :last
  def initialize(discount=0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity=1)
    self.items ||= []
    quantity.times { self.items << title }
    self.last = price * quantity
    self.total += self.last
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      percentage = self.discount / 100.0
      self.total -= self.total * percentage
      "After the discount, the total comes to $#{self.total.floor}."
    end
  end


  def void_last_transaction
    self.total -= self.last
  end

end
