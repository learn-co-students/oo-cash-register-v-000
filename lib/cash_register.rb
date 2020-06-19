require 'pry'
class CashRegister

  attr_accessor :total, :last_transaction, :items
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title,price,quantity=1)
    self.last_transaction = price*quantity
    self.total = self.total + self.last_transaction
    count = quantity
    while (count>=1)
      self.items << title
      count-=1
    end

  end

  def apply_discount
    if self.discount!=0
      self.total = self.total - ((self.discount*self.total)/100)
      #binding.pry
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end
