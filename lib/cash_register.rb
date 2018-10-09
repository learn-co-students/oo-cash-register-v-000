require 'pry'

class CashRegister
  attr_accessor :total, :discount, :cash_register, :items, :price, :quantity, :last_transaction, :title
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do 
      @items << title 
    end
    @last_transaction = price * quantity
    @total += price * quantity
    @total
  end 

  def apply_discount
    new_discount = @total * @discount / 100
    @total = @total - new_discount
    if @discount > 0 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end

end
