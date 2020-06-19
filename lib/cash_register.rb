class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity=1)
    @total = price * quantity + @total
    @items.fill(name, @items.size, quantity)
    @last_transaction = price * quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= ((self.discount / 100.0) * self.total)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
