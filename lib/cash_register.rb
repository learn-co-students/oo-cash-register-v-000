
require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_trans = []
  end

  def add_item(item, price, quantity = 1)
    self.total = quantity*price + self.total
    counter = 1
      while counter <= quantity
        @items << item
        @last_trans[0] = price
        @last_trans[1] = quantity
        counter += 1
        #binding.pry
      end

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
    @total = @total - @last_trans[0]*@last_trans[1]
  end

end
