require'pry'
class CashRegister
    attr_accessor :total, :discount, :item, :last_item

    def initialize(total = 0)
        @total = total
        @discount = total
        @item = []
        @last_item = 0
    end

    def total
        @total
    end

    def add_item(item, price, num = 1)
        # binding.pry
        num.times { @item << item }
        @last_item = price
        @total += price * num - @discount
    end

    def apply_discount
        # binding.pry
        @total = (@total*(1-@discount/100.0)).to_i
        @total > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
    end

    def items
        @item
    end

    def void_last_transaction
        @total = @total - @last_item
    end
end
