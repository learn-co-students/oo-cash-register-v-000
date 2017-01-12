 require "pry"
class CashRegister

    attr_accessor :total, :discount, :price, :items, :quantity

    def initialize (*discount)
      @total = 0
      @discount = discount[0]
      @items = []
    end

    def cash_register_with_discount
      self.discount
    end

    def add_item (title, price, quantity = 1)
      num = 0
      until num == quantity
        @items << title
        num +=1
      end
      @total += price * quantity
      @prices = []  << @total
    end

    def apply_discount
      if @discount != nil
        #total amount minus (converts % to decimals)times the amount
        @total = @total - (cash_register_with_discount.to_f/100)*@total
        "After the discount, the total comes to $#{@total.floor}."
      else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      @total = @total - @prices.last
    end


end
