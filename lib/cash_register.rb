require 'pry'

class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
   @total = 0
   @discount = discount
   @items = []
  end

  def add_item(item,price,q=1)
    @last_transaction = price*q
    q.times {@items.push(item)}
    self.total += price * q
  end

  def apply_discount
    if discount != 0
      reduction = self.total * (discount.to_f/100)
      self.total = self.total - reduction.to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
