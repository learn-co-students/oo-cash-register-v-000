class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times { self.items << title }
    self.last_transaction = quantity * price
    self.total += self.last_transaction
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (self.total * ((100.0 - self.discount) / 100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
