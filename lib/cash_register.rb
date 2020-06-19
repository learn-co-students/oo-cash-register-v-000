class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      self.items.push(title)
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount
      self.total = self.total * (1 - self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
