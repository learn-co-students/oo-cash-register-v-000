require 'pry'

class CashRegister
  
  attr_accessor :discount, :total
  attr_reader :items

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = [title, price, quantity]
    @total += (price * quantity) 
    @items = @items + [title] * quantity
  end
  
  def apply_discount
    if @discount <= 0
      "There is no discount to apply."
    else
      discount_amount = (@total * (@discount/100.0))
      @total = @total - discount_amount
      "After the discount, the total comes to $#{'%g' % @total}."
    end
  end

  def void_last_transaction
    title, price, quantity = @last_transaction
    @total -= (price * quantity) 
    @items = @items - [title] * quantity
  end

end


# BBHossified
# require 'pry'

# class CashRegister
  
#   attr_accessor :discount
#   attr_reader :items

#   def initialize(discount = 0)
#     @discount = discount
#     @transactions = []
#   end

#   def add_item(title, price, quantity = 1)
#     @transactions << [title, price, quantity]
#   end
  
#   def total
#     subtotal = @transactions.map {|t,p,q| p*q }.inject(&:+)
#     discount_amount = (subtotal * (@discount/100.0))
#     subtotal - discount_amount
#   end

#   def void_last_transaction
#     @transactions.pop
#   end

# end

