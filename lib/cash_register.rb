require 'pry'
require 'bigdecimal'
require 'bigdecimal/util'

class CashRegister

      attr_accessor :total, :discount, :title, :price



      def initialize(employee_discount = nil)
            @total = 0
            @discount = employee_discount
            @items = []
      end

      def add_item(title, price, quantity = 1)
            @price = price
            @total += price.to_d * quantity
            quantity.times do
                  @items << title
            end

      end

      def apply_discount
            if @discount != nil
                  @total = @total - @total * @discount / 100
                  "After the discount, the total comes to $#{@total.to_i}."
            else
                  "There is no discount to apply."
            end
      end

      def items
            @items
      end

      def void_last_transaction
            @total = @total - @price
            #binding.pry
      end
end
