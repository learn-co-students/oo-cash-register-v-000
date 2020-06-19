class CashRegister
  attr_accessor :total, :last_transaction
  attr_reader :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.last_transaction = price * quantity
    self.total += self.last_transaction
    quantity.times { self.items << title }
  end

  def apply_discount
    if self.discount > 0
      self.total -= (self.total * discount/100)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
