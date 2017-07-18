class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      items << item
    end
    self.last_transaction = price * quantity
    self.total += price * quantity
  end

  def apply_discount
    applied_discount = self.total * discount/100
    self.total -= applied_discount
    if discount !=0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
