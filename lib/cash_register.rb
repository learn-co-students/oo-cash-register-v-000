class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    i = 1
    while i <= quantity do
      self.items << item
      i += 1
    end
  end

  def apply_discount
    if self.discount > 1
      self.total -= (self.total / 100) * self.discount
    "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = 0
  end

end
