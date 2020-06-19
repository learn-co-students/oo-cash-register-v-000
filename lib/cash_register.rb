class CashRegister
  attr_accessor :discount, :total, :transactions

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end

  def self.total
    self.total
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
    self.transactions << price
    @items.fill(title,@items.size,quantity)
  end

  def apply_discount
    self.total = self.total - (self.total * self.discount/100)
    if discount > 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
  	self.total = self.total - self.transactions.pop()
  end
end
