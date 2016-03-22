class CashRegister
  attr_reader :discount
  attr_accessor :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times { self.items.push(item) }
    self.last_transaction = {item: item, price: price, quantity: quantity}
  end

  def apply_discount
    if discount != 0
      self.total *= (1.0 - self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    item = self.last_transaction[:item]
    price = self.last_transaction[:price]
    quantity = self.last_transaction[:quantity]
    self.total -= price * quantity
    self.items.delete(item)
  end


end
