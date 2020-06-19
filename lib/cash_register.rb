
class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times { self.items << title}
    amount = price * quantity
    self.total += amount
    self.last_item = amount
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * self.discount * 0.01
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end
end