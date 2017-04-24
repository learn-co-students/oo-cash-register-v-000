class CashRegister
  attr_accessor :discount, :total, :items

  @@items = []
  @@prices = []

  def initialize(discount = nil)
    self.discount = discount
    self.total = 0
    self.items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times {self.items << title}
    @@prices << price
    self.total = self.total + (price * quantity)
  end

  def apply_discount
    if !discount
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * discount/100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    arr = @@prices
    self.total = (self.total - arr.last)
    self.items.pop
    @@prices.pop
  end

end
