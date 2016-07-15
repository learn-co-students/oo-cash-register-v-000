
require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    last_trans = 0
  end

  def add_item(name, price, quantity = 1)
    self.total = quantity*price + self.total
    counter = 1
      while counter <= quantity
        items << name
        counter += 1
        #binding.pry
      end
      self.last_trans = price*quantity

  end

  def apply_discount
    if self.discount > 0
      #binding.pry
      self.total = self.total - self.total*self.discount/100
      #binding.pry
      return "After the discount, the total comes to $#{self.total}."
    else return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_trans
  end

end
