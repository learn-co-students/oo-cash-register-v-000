
class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_item = nil
  end
  
  def add_item(title, price, quantity = nil)
    if quantity == nil
      amount = price
      self.items << title
      self.last_item = price
    else
      amount = price * quantity
      quantity.times { |num| self.items << title}
      self.last_item = amount
    end
    self.total += amount
  end

  def apply_discount
    if discount == nil
      "There is no discount to apply."
    else
      percentage = self.discount * 0.01
      saved = self.total * percentage
      self.total -= saved
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end
  
end