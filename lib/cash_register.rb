class CashRegister
    attr_accessor :total, :discount, :items, :transaction

    def initialize(employee_discount = nil)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        self.transaction = price * quantity
        self.total += price * quantity
        item_count = Array.new(quantity, title)
        self.items += item_count
    end

    def apply_discount
        if self.discount == nil
            "There is no discount to apply."
        else self.total *= ((100 - self.discount)/100.0)
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.transaction
    end



end
