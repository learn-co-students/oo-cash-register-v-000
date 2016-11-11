require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, num = 1)
    self.total += price * num
    num.times do
      items << title
    end
    self.last_transaction = price * num
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (1.0-@discount/100.0)
      "After the discount, the total comes to $#{@total.round}."
    end
 end

  def void_last_transaction
    self.total = last_transaction - self.total 
  end

end
