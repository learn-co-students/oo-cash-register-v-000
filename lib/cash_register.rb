require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :last_total, :last_quantity

   def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
   end

   def add_item(title, price, quantity = 1)
      @last_total = @total
      @last_quantity = quantity
      @total += price * quantity

      quantity.times do
         @items.push(title)
      end
   end

   def apply_discount
      if @discount == 0
         'There is no discount to apply.'
      else
         @total -= @total.to_f * (@discount.to_f / 100.0)
         "After the discount, the total comes to $#{@total.to_i}."
      end
   end

   def void_last_transaction
      @total = @last_total

      @last_quantity.times do
         @items.pop
      end
   end
end
