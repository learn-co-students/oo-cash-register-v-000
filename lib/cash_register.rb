
class CashRegister
  attr_accessor :total, :discount, :cart

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    self.total += (price*quantity)
    @cart.fill(item, @cart.size, quantity)
  end

  def apply_discount
    discounted_price = self.total
    discounted_price *= (discount.to_f/100)
    self.total -= discounted_price

    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = 0.0
  end
end
