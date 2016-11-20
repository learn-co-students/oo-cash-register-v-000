class CashRegister
  attr_reader :discount, :total, :cart, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = 0
  end

  def total=(total)
    @total = total
  end

  def last_transaction=(last_transaction)
    @last_transaction = last_transaction
  end

  def add_item(title, price, quantity = 1)
    self.total += (quantity * price)
    quantity.times {self.items << title}
    self.last_transaction = (quantity * price)
  end

  def apply_discount
    if self.discount != 0
      self.total -= (self.total * (0.01 * discount))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= (@last_transaction)
  end
end
