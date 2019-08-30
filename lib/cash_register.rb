class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def items
    @items
  end

  def initialize(employee_discount = 0)
    @total = 0
    self.items = []
    self.discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    self.last_item = price * quantity
    self.total += self.last_item
    self.items.fill(title, self.items.size, quantity)
  end

  def apply_discount
    if self.discount != 0
      self.total -= ((self.total * self.discount) / 100)
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end


end
