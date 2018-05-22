
class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times { items << title}
    amount = price * quantity
    self.total += amount
    self.last_item = amount
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      saved = self.total * self.discount * 0.01
      self.total -= saved
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end
  
end