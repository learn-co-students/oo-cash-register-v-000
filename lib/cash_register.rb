class CashRegister
    attr_accessor :discount, :total
    attr_reader :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = {}
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
        @last_transaction = {title: title, price: price, quantity: quantity}
    end

    def apply_discount
        if discount > 0
            @total = @total - @total * (discount/100.0)
            "After the discount, the total comes to $#{@total.to_int}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction[:price] * @last_transaction[:quantity]
        @items.pop(@last_transaction[:quantity])
    end

end
