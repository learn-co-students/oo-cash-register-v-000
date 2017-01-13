
class CashRegister
  attr_accessor :total, :discount, :items, :receipt

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @receipt = []
  end

  def add_item(item, price, quantity = 1)
    cost = price*quantity
    self.total += cost
    quantity.times do
      self.items << item
    end
    self.receipt << cost
  end

  def apply_discount
    if self.discount > 0
      self.total *= (1-self.discount*0.01)
      "After the discount, the total comes to $#{total.floor}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.receipt.pop
  end

end
