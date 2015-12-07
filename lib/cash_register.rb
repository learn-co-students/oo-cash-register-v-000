require 'pry'

class CashRegister
  attr_accessor :transactions, :total, :items
  attr_reader :discount
 
  def initialize(discount=0)
    @discount = discount.to_f
    @transactions = []
    @total = 0
  
  end

  def add_item(title, price, quantity = 1)
    quantity.times {
      @transactions << {title => price} 
      }
    
    update_total
    update_items
    # @total = @transactions.collect{|item| item.values}.flatten.reduce(:+)
  end

  def update_total
   @total = @transactions.collect{|item| item.values}.flatten.reduce(:+).to_f

  end

  def update_items
   @items = @transactions.collect{|item| item.keys}.flatten
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*(1-@discount/100)
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    @transactions.pop
    update_items
    update_total


  end


end


