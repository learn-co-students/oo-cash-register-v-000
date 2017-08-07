class CashRegister
    attr_accessor :total, :discount, :price, :last_item_amt

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += price*quantity    
        quantity.times do 
            @items << title
        end
        @last_item_amt = price * quantity
    end

    def apply_discount
        if @discount
            @total = @total - (@total * @discount/100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = (@total - @last_item_amt)
    end

end