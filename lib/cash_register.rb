require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction

  #@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += price*quantity
    @last_transaction = [item, price, quantity]
    
    quantity.times do 
      @items << item
    end
  end

  def apply_discount
    if discount
      discount_amount = discount.to_s
      discount_amount = discount_amount.insert(0,".").to_f

      self.total = @total - (@total * discount_amount)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_transaction[1] # [1] is the price in the array
  end

end
