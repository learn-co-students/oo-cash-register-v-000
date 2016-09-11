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


# Solution Code
#
# class CashRegister
#
#   attr_accessor :items, :discount, :total, :last_transaction
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end
#
#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
# end
