class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.transactions = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    i = 0
    while i < quantity
      self.items << item
      i += 1
    end
    self.transactions << [item, price, quantity]
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * (100 - self.discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def transactions
    @transactions
  end

  def void_last_transaction
    self.total -= self.transactions.last[1] * self.transactions.last[2]
    self.transactions.pop
  end

end
