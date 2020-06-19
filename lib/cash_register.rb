# class CashRegister
# attr_accessor :total, :discount, :last_transaction_amount, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @cart = []
#   end 
   
#   def total
#     @total
#   end
   
#   def add_item(item, price, quantity = 1)
#     item_info = {}
#     item_info[:name] = item
#     item_info[:price] = price
#     item_info[:quantity] = quantity
#     @cart << item_info
#     @total += price * quantity
#     end
    
#     def apply_discount
#       if @discount == 0
#       return "There is no discount to apply."
#       end
#     @total -= @total * @discount / 100
#       return "After the discount, the total comes to $#{@total}."
#     end
  
#   def items
#       item_names = []
#       @cart.each do | item_info |
#       for qty in 1..item_info[:quantity] 
#         item_names << item_info[:name]
#       end 
#     end 
#     item_names
#   end
   
#   def void_last_transaction
#       @last_transaction_amount = []
#       @total -= @last_transaction_amount
#       @last_transaction_amount
#   end
   
# end 
# class CashRegister

#   attr_accessor :total, :discount, :last_transaction_amount, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end

#   def add_item(title,price,quantity = 1)
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title   
#         i+=1
#       end
#     else
#       @items << title
#     end
#     @total += price*quantity
#     @last_transaction_amount = @total
#     @total
#   end

#   def apply_discount()
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end

#   def void_last_transaction()
#     @total -= @last_transaction_amount
#   end

# end

# quantity.times do 
#   @items << title
# end
require "pry"
class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction 
   
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
     quantity.times do 
      @items << title 
    end
    @last_transaction = price * quantity 
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      employee_discount = @discount.to_f/100 * @total
    @total -= employee_discount
    "After the discount, the total comes to $#{@total.to_i}."
   end
  end
  
  def void_last_transaction
   @total -= @last_transaction
  end

  
  
end
