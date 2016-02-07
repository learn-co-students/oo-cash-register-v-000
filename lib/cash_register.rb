class CashRegister
    attr_accessor :total, :discount, :title, :price, :items, :last_price

    @items = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @last_price = price
        @total += price * quantity
        quantity.times {@items << title}
    end

    def apply_discount
        if @discount == 0
            'There is no discount to apply.'
        else
            @total -= @total * discount / 100
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= @last_price
    end
end
