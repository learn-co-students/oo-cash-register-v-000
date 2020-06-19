require 'pry'
class CashRegister
  attr_accessor :total, :discount, :transaction, :items, :last_price

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(name, price,quantity=1)
    self.total += price*quantity
    quantity.times {|x| self.items << name}
    self.transaction = self.items.count
    self.last_price = price
  end

  def apply_discount
    total_discount = @discount*@total/100
    if total_discount == 0
      "There is no discount to apply."
    else
      self.total -= total_discount
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_price
  end
end
