require 'pry'

class CashRegister

  attr_accessor :total, :lastitemprice

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
      end

    def discount
      @discount = 20
    end

    def add_item(item, price, quantity = 1)
      @total += price * quantity
      @lastitemprice = price
      quantity.times do @items << item
    end
  end

    def apply_discount
      if @discount == nil
        "There is no discount to apply."
      else
      @total = (@total - ((@discount/100.0) * @total)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

    def items
      @items
    end

    def void_last_transaction
      @items.pop
      @total = @total - @lastitemprice
      @lastitemprice = 0
      "The new total is: $#{@total}"
    end

end
