require 'pry'

class CashRegister
    
   attr_accessor :total, :discount, :items, :prices
   
   def initialize(discount=0)
      @total = 0 
      @discount = discount
      @items = []
      @prices = {}
   end
   
   def add_item(title, price, quantity = 1)
      @total += price*quantity
      # any? [{ |(key, value)| block }]
      if @prices.none? {|key| key = title} 
         prices[title] = price
      end
      quantity.times do
         @items << title
      end
   end
   
   def apply_discount
      if self.discount != 0
         discount = total * integer_to_percent(self.discount)
         @total -= discount.to_i
         "After the discount, the total comes to $#{total}."
      else
         "There is no discount to apply."
      end
   end
   
   #converts integer to a percentage
   def integer_to_percent(integer)
      integer_to_percent = integer.to_f/100
   end
   
   def void_last_transaction
      last_price = prices[items.last]
      last_price -= last_price * integer_to_percent(discount)  #applied discount to the item price not tested for in mocha
      @total -= last_price
   end
    
end
