
class CashRegister

    attr_accessor :discount, :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = [ ]
    end

    def add_item(title, price, quantity = 1)
        @price = price * quantity 
        @total += @price 
        if quantity > 1
            counter = 0 
            while counter < quantity
                @items << title
                counter += 1
            end
        else 
            @items << title 
        end
    end

    def apply_discount
        if @discount > 0 
            @total -= (@total * @discount)/100
            return "After the discount, the total comes to $#{@total}."
        elsif @discount == 0 
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end


    def void_last_transaction
        @total -= @price
    end

end
