# require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items, :quantity, :transaction

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(item, price, quantity = 1)
            @transaction = @total + price * quantity
      @total = @total + price * quantity
      quantity.times do
      @items << item
    end
  end

    def apply_discount
      if @discount != 0
        @total = (@total * 0.8).to_i
        return "After the discount, the total comes to $#{@total}."
      else
        return "There is no discount to apply."
      end
    end
    def void_last_transaction
      @total -= @transaction

    end
  end
