# Cash Register Class
class CashRegister
  attr_accessor :total, :discount, :items, :last_item, :last_quantity, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << item
    end

    self.last_item = item
    self.last_price = price
    self.last_quantity = quantity
  end

  def apply_discount
    if discount > 0
      self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      'There is no discount to apply.'
    end
  end

  def void_last_transaction
    self.total -= self.last_price * self.last_quantity
    self.items.pop(last_quantity)
  end
end
