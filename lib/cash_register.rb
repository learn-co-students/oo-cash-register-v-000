class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times{self.items << item}
    self.total += price * quantity
    self.last_transaction = {"item": item, "price": price, "quantity": quantity}
  end

  def percent_discount
    1.0 - (self.discount / 100.0)
  end

  def apply_discount
    return "There is no discount to apply." if self.discount == 0
    self.total *= self.percent_discount
    "After the discount, the total comes to $#{self.total.to_i}."
  end

  def void_last_transaction
    item, price, quantity = last_transaction.values
    self.items.pop(quantity)
    self.total -= (price * quantity) / self.percent_discount
    "Last transaction voided!"
  end


end
