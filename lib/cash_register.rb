class CashRegister

    attr_accessor :total, :discount, :items


    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @quantity = quantity
        @total = @total + @price * quantity
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        if @discount > 0
            @total = @total - (@total * @discount/100)
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @price * @quantity
    end


end
