
class CashRegister
    attr_writer :total, :price, :discount, :quantity, :items_array


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
        @price = price
        @quantity = quantity
        @items_array.fill(title, @items_array.size, quantity)
        @total = @total + price * quantity
    end

     def apply_discount
      if @discount == 0
        "There is no discount to apply."
      else
        percentage = @discount.to_f/100.to_f
        discount_amount = @price * @quantity * percentage
        @total = @total - discount_amount
        self.total = @total
        "After the discount, the total comes to $#{@total.to_i}."
      end
    end

    def items
      @items_array
    end

    def void_last_transaction
      self.total = @total - @price * @quantity
    end

end
