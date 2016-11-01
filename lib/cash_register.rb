
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    if quantity > 1
      self.total += price * quantity
      quantity.times do
        items << item
      end
    else
      self.total += price
      items << item
    end
      self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      cash_discount = (self.discount % self.total) * 10
      new_total = self.total - cash_discount
      self.total = new_total.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
