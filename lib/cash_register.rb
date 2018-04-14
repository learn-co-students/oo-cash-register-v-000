class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_transaction = 0.0
  end

  def add_item(title, price, quantity = 1)
    quantity.times { self.items << title }
    self.last_transaction = quantity * price
    self.total += self.last_transaction
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * self.discount / 100.0 if discount != 0
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
