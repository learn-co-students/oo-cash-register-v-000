
class CashRegister
  attr_accessor :total, :receipt, :last_transaction_amount
  attr_reader :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @receipt = []
  end

  def add_item (title, price, quantity = 1)
    self.total += price*quantity
    quantity.times {@receipt << title}
    @last_transaction_amount = price
  end

  def apply_discount
    if self.discount != 0
      self.total *= (1-self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @receipt
  end

  def void_last_transaction
    self.total -= @last_transaction_amount
  end

end
