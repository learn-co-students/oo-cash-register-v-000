class CashRegister
  attr_accessor :total, :discount, :cart, :item_total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity=1)
    quantity.times {cart << item}
    @item_total = price * quantity
    self.total = total + item_total

  end

  def apply_discount
    return "There is no discount to apply." if discount == 0

    self.total = total - (total * (discount * 0.01)).to_i
    return "After the discount, the total comes to $#{self.total}."
  end

  def items
    cart
  end

  def void_last_transaction
    self.total = total - item_total
  end

end
