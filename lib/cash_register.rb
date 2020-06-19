class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    quantity.times {items << item}
    self.total += price * quantity
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * (1 - (discount/100.0))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end

# transaction = CashRegister.new(20) #=> new cash register class intialized with discount
# transaction2 = CashRegister.new #=> new cash register class initliaed without discount
# transaction.add_item("eggs", 0.98) #=> adds price to total
# transaction.add_item("books", 5.00, 3) #=> adds price to total
