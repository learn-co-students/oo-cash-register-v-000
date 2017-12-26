class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        @last_transaction = price * quantity
        counter = quantity
        while counter > 0 
            @items << title
            counter -= 1
        end
    end

    def apply_discount
        if @discount == 0 
            "There is no discount to apply."
        else
            @total *= (1 - @discount.to_f/100)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
    
end