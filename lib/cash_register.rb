require 'pry'

class CashRegister

  attr_accessor :total, :discount, :discount_amount

  def initialize(discount = nil)
    @total = 0.00
    @discount = discount
    @items = [] 
  end

  def discount
    if @discount != nil
      @discount
    else
      @discount = 0
    end

  end

  def add_item(name,price,quantity = 1)

    @name = name
    @total += price*quantity
    quantity.times do 
      @items<<name
    end
  end

  def items
    @items
  end

  def apply_discount

    if @discount != nil

      self.total *= 8/10.to_f
      self.total = self.total.to_i
      return "After the discount, the total comes to $#{self.total}."

    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0

  end


end
