# Classy and Cashy
class CashRegister
  attr_accessor :total, :discount, :price, :title

  def initialize(discount = nil)
    @total = 0
    @item = []
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity
    quantity.times { @item << title }
  end

  def apply_discount
    if self.total == 0
      'There is no discount to apply.'
    else
      self.total -= self.total * (discount.to_f / 100)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @price
  end
end
