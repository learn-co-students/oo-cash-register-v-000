class CashRegister
  attr_accessor :total, :discount, :title, :items, :last_transaction

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {items << title}
    @last_transaction = title, price, quantity
  end

  def apply_discount
    if discount 
      discount_mulitplier = 100 - discount
      self.total = total * discount_mulitplier/100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction[1] * last_transaction[2]
  end

end
