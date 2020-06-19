class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    self.items.concat([item]*quantity)
    self.last_transaction = [item, price, quantity]
  end



  def apply_discount
    self.total -= self.total * @discount/100
    @discount != 0 ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end

  def void_last_transaction
    self.total -= self.last_transaction[1]
  end


end
