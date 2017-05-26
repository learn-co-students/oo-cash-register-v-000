class CashRegister
    attr_accessor :total, :discount, :all, :last_item_price
       
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all = []
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        quantity.times{
            @all << title
        }
        @last_item_price = price * quantity
    end

    def apply_discount
        if @discount != 0
            @total = (@total * ((100 - @discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @all
    end

    def void_last_transaction
        @total = @total - @last_item_price  
    end


end