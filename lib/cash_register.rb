class CashRegister
    attr_accessor :discount, :total, :items, :transactions 

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end

    def self.total
        @total
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            @items << title
        end

        transaction = price * quantity

        @transactions << transaction

        @total += transaction
    end

    def apply_discount
        if @discount != nil
            @total -= (@total * (@discount.to_f/100))
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def self.items
        @items
    end

    def void_last_transaction
        @total = @total - @transactions[-1]
    end
end
