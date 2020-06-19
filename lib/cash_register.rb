require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :last_transaction
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @last_transaction = price*quantity
    @total = @total + price*quantity
    while quantity > 0 
      @items << title
      quantity -= 1
    end
  end
  
  def apply_discount()
    if @discount == 0 
      "There is no discount to apply."
    else
      @total = @total - @total*(@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end