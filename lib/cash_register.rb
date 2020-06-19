require 'pry'
class CashRegister

    attr_accessor :total, :discount, :title, :price, :quantity, :item

    # @@items =[]

    def initialize(discount = 0)
      @total = 0
      @discount = discount.to_i
      total
      @@items = []
    end

    def add_item(title, price, quantity = 1)
      @total = @total + (price * quantity)
      if quantity == 1
        @@items << title
      else
        quantity.times {@@items << title}
      end
    end

    def apply_discount
        if discount > 0
          @total = @total - (@total * (discount/100.0))
          "After the discount, the total comes to $#{@total.round}."
        else
          "There is no discount to apply."
        end
    end

    def items
      # binding.pry
      @@items
    end

    def void_last_transaction
      @total = @total - self.total
    end

end
