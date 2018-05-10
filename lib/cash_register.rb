class CashRegister
  attr_accessor :total, :discount, :items, :last_purchase

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
    @last_purchase = nil
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.last_purchase = price * quantity
    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end

  def apply_discount
    discounted_price = self.total -= self.total * self.discount / 100
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{discounted_price}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_purchase
  end

end
