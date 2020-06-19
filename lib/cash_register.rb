class CashRegister
  attr_accessor :total, :discount, :items, :last_cost

  def initialize(discount=0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times{items << title}
    self.last_cost = price
  end

  def void_last_transaction
    items.pop
    self.total -= last_cost
  end

  def apply_discount
    self.total *=(1 - (discount/100))
    if discount > 0
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
end
