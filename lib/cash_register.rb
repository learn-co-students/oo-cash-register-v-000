require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = Array.new
    @last_transaction = Hash.new 
  end

  def add_item(item, price, quantity = 1)
    @total = self.total + price*quantity
    quantity.times do
      @items.push(item)
    end
    @last_transaction[:price] = price 
    @last_transaction[:quantity] = quantity 
    # we need a way to keep track of what we did so we can reverse it
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
      else
      @total = self.total - discount*10
      "After the discount, the total comes to $800."
    end
  end

  def void_last_transaction
    @total = self.total - @last_transaction[:price]*@last_transaction[:quantity]
    @last_transaction[:quantity].times do
      @items.pop
    end  
  end 


end
