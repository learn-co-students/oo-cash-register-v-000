require 'pry'

 class CashRegister
   attr_reader :discount, :items
   attr_accessor :total

   def initialize(discount = nil)
     @total = 0
     @discount = discount
     @items = []
   end

   def add_item(name, cost, quantity = 1)
     @previous_items = @items
     @previous_total = @total
     quantity.times { |_i| @items << name }
     @total += cost * quantity
   end

   def apply_discount
     if @discount
       @total = (@total.to_f * (100.0 - @discount.to_f) / 100.0).to_i
       "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
   end

   def void_last_transaction
     @items = @previous_items
     @total = @previous_total
   end

 end
