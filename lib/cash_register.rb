class CashRegister
  attr_accessor :total, :discount, :last_transaction
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(item, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total += self.last_transaction
    @items.fill(item, @items.size, quantity)
  end

  def apply_discount
    self.total -= self.total * self.discount / 100
    if self.discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end #closing CashRegister Class
