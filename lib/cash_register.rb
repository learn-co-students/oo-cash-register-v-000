require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :last_transaction

   def initialize(discount=0)
      @total = 0  
      @discount = discount
      @items = []
   end

   def add_item(title, price, quantity = 1)
      #add title to items array.  Use items.size to get the size, and add "title" to the array "quantity" amount of times.
      @items.fill(title, @items.size, quantity)
      @last_transaction = price

      self.total += price * quantity
   end

   def apply_discount
      if self.discount == 0
         "There is no discount to apply."
      else
         discountNum = self.discount / 0.1
         self.total -= discountNum
         "After the discount, the total comes to $#{self.total.to_i}."
      end
   end

   def items
      @items
   end

   def void_last_transaction
      self.total -= self.last_transaction
   end
   
end
