require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = 20
  end

  def total
    @total
  end

  def add_item(title, price)
    total + price
    #increases the total
    #accepts and optional quantity
    #doesn't forget about the previous total
  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end


end
