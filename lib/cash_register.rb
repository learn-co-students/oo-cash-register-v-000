class CashRegister
  attr_accessor :total, :items, :last
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last = self.total
    self.total += price * quantity

    for ind in 1..quantity
      self.items << title
    end

  end

  def apply_discount
    if self.discount != 0
      self.total *= (1-self.discount*0.01)
      "After the discount, the total comes to $#{self.total.floor}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.last
  end

end
