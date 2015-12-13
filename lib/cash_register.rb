class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {self.items << title}
  end

  def apply_discount
    self.total = self.total * (1 - discount.to_f / 100)
    if discount > 0
      "After the discount, the total comes to $#{total.to_i}."
    else "There is no discount to apply."
    end
  end

  def items
    @@items 
  end

end

me = CashRegister.new(20)
puts me.add_item("me", 1000)
puts me.apply_discount