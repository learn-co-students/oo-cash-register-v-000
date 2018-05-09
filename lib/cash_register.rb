class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    discounted_price = self.total -= self.total * self.discount / 100
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{discounted_price}."
    end
  end


end
