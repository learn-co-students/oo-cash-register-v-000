require "pry"

class CashRegister
  attr_accessor :total, :title, :price, :discount

        def initialize(discount=0)
          @total=0
          @discount=discount
          @items_hash={}
          @transaction_values=[]
        end

        def add_item(title, price, quantity=1)
          @total+=price*quantity
          @title=title
          @items_hash[@title] = quantity
          @transaction_values << price
        end

        def apply_discount
          if discount == 0
            "There is no discount to apply."
          else
          @total=@total *(1- @discount/100.0)
          "After the discount, the total comes to $#{total.round}."
          end
        end

        def items
          array=[]
          @items_hash.collect do |item, quantity|
            i=0
            while i < quantity
              array << item
              i+=1
            end
          end
          array
        end

        def void_last_transaction
          @total = @total - @transaction_values.last
        end

end
