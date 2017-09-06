
class CashRegister
  attr_accessor :total, :discount, :all_items, :last_price

  def initialize(discount = 0)
    @total = 0
    @all_items = []
    @last_price = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times {all_items << title}
    self.last_price = price * quantity
  end

  def apply_discount
    if self.discount > 0
      percent = self.discount.to_f / 100
      self.total = self.total - (self.total * percent)
      message = "After the discount, the total comes to $#{self.total.to_i}."
      message
    else
      message = "There is no discount to apply."
      message
    end
  end

  def items
    all_items
  end

  def void_last_transaction
    self.total = self.total - (self.last_price)
  end

end
