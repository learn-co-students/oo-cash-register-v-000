
class CashRegister
    attr_accessor :total, :price, :discount, :quantity, :items_array

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items_array = []
    end

    def discount
      @discount
    end

    def total
       @total
    end

    def add_item(title, price, quantity = 1)
        @items_array.fill(title, @items_array.size, quantity)
        self.total += price * quantity
        @last_purchase = price * quantity
    end

     def apply_discount
      if @discount == 0
        "There is no discount to apply."
      else
        self.total = (@total * ((100 - @discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total.to_i}."
      end
    end

    def items
      @items_array
    end

    def void_last_transaction
      self.total = self.total - @last_purchase
    end
end

#OLD CODE: NOT REFACTORED
#class CashRegister
#    attr_writer :total, :price, :discount, :quantity, :items_array


#      @total = 0
#      @discount = discount
#       @items_array = []
#    end

#    def discount
#      @discount
#    end

#    def total
#       @total
#    end

#        @price = price
#        @items_array.fill(title, @items_array.size, quantity)
##    end

#     def apply_discount
#      if @discount == 0
#        "There is no discount to apply."
#      else
#        percentage = @discount.to_f/100.to_f
###        self.total = @total
#        "After the discount, the total comes to $#{@total.to_i}."
#      end
#    end

#    def items
#      @items_array
#    end

#    def void_last_transaction
#      self.total = @total - @price * @quantity
#
#
