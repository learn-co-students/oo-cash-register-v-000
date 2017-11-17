require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :list



  def initialize(discount=0)
    @total = 0
    @discount = discount
    @list = []
  end

  #def self.total
  #end

  def add_item(title,price,quantity=1)
    quantity.times do 
    @list<< title
  end
    self.total = self.total + price * quantity
end

  def apply_discount
    if self.total == 0
      return "There is no discount to apply."
    else
      self.total = self.total - (self.total * (discount.to_f/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    return @list
  end

  def void_last_transaction
  self.total =  self.total - self.total
  end
end
