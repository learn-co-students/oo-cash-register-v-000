class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last = []
  end

  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    last_item = "#{item}: " + (price * quantity).to_s
    self.last = last_item.split(": ").last.to_f
    quantity.times do
      self.items << item
    end
  end

  def apply_discount
    self.total = self.total - ("0.#{self.discount}".to_f * self.total.to_f).to_i
    if self.discount == nil
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last
  end
end
