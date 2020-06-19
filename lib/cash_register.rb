class CashRegister

  attr_accessor :discount, :total, :transactions

  def initialize(discount = 0)
    self.discount = discount
    self.total = 0
    self.transactions = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    until quantity == 0
      self.transactions << [title, price, quantity]
      quantity -= 1
    end
  end

  def apply_discount
    if self.discount != 0
      self.total *= (1-(self.discount/100.00))
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.transactions.collect do |item|
      item[0]
    end
  end

  def void_last_transaction
    self.total -= self.transactions[-1][2]*self.transactions[-1][1]
    self.transactions.pop
  end
end
