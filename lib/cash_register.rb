class CashRegister

attr_accessor :total, :discount, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @list = []

  end

  def add_item(title, price, quantity = 1)
    self.transaction = (price*quantity)

    self.add_to_list(title, quantity)
    self.total += (self.transaction)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * (discount.to_f/100))
      "After the discount, the total comes to $#{total.round}."
    end
  end

  def add_to_list(item, quantity)
    @list.fill(item, @list.size, quantity)
  end

  def items
    @list
  end

  def void_last_transaction
    self.total -= self.transaction

  end

end

test=CashRegister.new
test.add_item("a", 10, 5)
test.add_item("b", 2)
