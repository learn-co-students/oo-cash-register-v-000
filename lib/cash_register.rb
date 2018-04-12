require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :last_transaction_total




    def initialize(discount = nil)
      @discount = discount
      @total = 0
      @items = []
    end

    def items
      @items
    end

    def discount
      @discount
    end

    def add_item(title, price, quantity = 1)
      self.total += price * quantity
      quantity.times do
      items << title
      end
    end

    def apply_discount
      if @discount
        @total = @total -= @discount*10
       "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."
      end
    end

    def

    def last_transaction
      # trying to keep track of the last transaction

      # need to keep track of a "finished transaction"

      #

    end

    def void_last_transaction

    end

end
