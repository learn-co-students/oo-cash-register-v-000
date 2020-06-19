class CashRegister
  attr_accessor :total, :discount, :items, :price

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { self.items << item }
    @price = price * quantity
    self.total += self.price
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * self.discount * 0.01).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.price
  end
end
