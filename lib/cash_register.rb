
class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)

    until quantity == 0
      self.items.push(title)
      quantity -= 1
    end

    self.last_item = price*quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = Integer(self.total - (self.total * Float(self.discount)/100))
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.items.pop()
    self.total = self.total - self.last_item
  end

end
