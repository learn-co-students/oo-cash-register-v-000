class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    quantity.times {self.items << item}
    self.total += (price * quantity)
    self.last_transaction = (price * quantity)
  end

  def apply_discount
    self.total = self.total * ((100.0 - self.discount) / 100 )
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
