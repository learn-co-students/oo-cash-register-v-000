class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.items << [title] * quantity
        self.items = self.items.flatten
        self.total += price * quantity
        self.last_transaction = price * quantity
    end


    def apply_discount
        if @discount != 0
            self.total = self.total * (1 - self.discount * 0.01)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end



    def void_last_transaction
        self.total -= self.last_transaction
    end
end
