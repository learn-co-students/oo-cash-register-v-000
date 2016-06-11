class CashRegister
  attr_accessor :discount, :total, :items, :last_item

  def initialize(employee_discount = 0.0)
    @total = 0
    @discount = employee_discount
    @items = []
    @last_item = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    self.total += (price * quantity)
    self.last_item = price
  end

  def apply_discount
    if self.discount == 0.0
      return "There is no discount to apply."
    else
      self.total = self.total - ((self.discount / 100.0) * self.total)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    price = self.last_item
    self.total -= price
  end
end
