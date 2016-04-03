class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times do
    @items << item
    end
    self.last_transaction = quantity * price
  end
  def apply_discount
    if discount != 0
      self.total = (@total * ((100-@discount.to_f)/100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
