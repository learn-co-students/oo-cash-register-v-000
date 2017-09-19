require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

    def initialize(discount = nil)
      @total = 0
      @discount = discount
      @items = []
      @last_item = 0.00
    end

    def add_item(item, price, quan = 1)
        @items.fill(item, @items.size, quan)
        self.total += price * quan
        @last_item = price
    end

    def apply_discount
      if @discount
        @total -= @discount * 0.01 * @total
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
        @total -= @last_item
    end
end
