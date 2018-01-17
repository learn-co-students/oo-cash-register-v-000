require "pry"
class CashRegister
   attr_accessor :total, :discount, :items, :last_transaction

   def initialize(discount = 0)
       @total = 0
       @discount = discount
       @items = []
       @last_transaction
   end

   def add_item(title, price, quantity = 1)
     @total += price * quantity
       @last_transaction = price * quantity
     quantity.times do
           @items << title
         end
   end


    def apply_discount
      if discount == 0

           "There is no discount to apply."
       else
         @total -= @total * @discount / 100

        "After the discount, the total comes to $#{@total.round}."

      end
    end

    def void_last_transaction
       @total -= @last_transaction

    end

  end
