class CashRegister
  attr_accessor :total, :discount, :product, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(product, price, quantity = 1)
    self.total += price * quantity
    self.last_transaction = price * quantity

    quantity.times do
      self.items << product
    end
  end

  def apply_discount
    unless discount == 0
      self.total = (total - (total * (discount/100.0))).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end