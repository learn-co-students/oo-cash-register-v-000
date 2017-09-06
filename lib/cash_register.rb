require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total    = 0
    @discount = discount
  end

  def add_item(title, price, opt_quantity=1)
    self.total += price * opt_quantity
  end

  def apply_discount
    self.total -= self.discount * 10
    puts "After the discount, the total comes to $#{@total}."
  end


end
