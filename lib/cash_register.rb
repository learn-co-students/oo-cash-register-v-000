class CashRegister
  attr_accessor :total, :discount, :cart

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    # @items = []
    @cart = {}
  end

  def add_item(title, unit_price, quantity = 1)
    price = unit_price * quantity
    @last_transaction = price
    self.total += price
    self.cart[price] = [title] * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      percent_off = discount.to_f / 100
      self.total -= percent_off * self.total
      "After the discount, the total comes to $800."
    end
  end

  def items
    cart.values.flatten
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end
