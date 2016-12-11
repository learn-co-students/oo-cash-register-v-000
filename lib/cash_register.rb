class CashRegister
  attr_accessor :discount, :total, :items, :last

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
    @last = {}
  end

  def add_item(title, price, qty = 1)
    self.last[:items] = []
    (1..qty).each do
      self.items << title
      self.last[:items] << title
    end
    self.last[:price] = price
    self.total += price * qty
  end

  def apply_discount
    if self.discount != nil
      self.total -= (self.total * (self.discount.to_f / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last[:price]
    self.last[:price] = 0
    self.last[:items].each {self.items.pop}
  end
end
