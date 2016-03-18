
class CashRegister
       attr_accessor :total, :discount

     def initialize(discount = nil)
       @total = 0
       @discount = discount
       @items = []
       @last_t = []
    end

     def add_item(title, price, quantity=1)
        @total = @total + price * quantity
        quantity.times do
        @items << title
        @last_t = price
        end
      end

     def apply_discount
        if @discount != nil
        @total = @total-(@total * @discount/100)
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
       end
     end

     def items
       @items
     end

     def void_last_transaction
      @total = @total - @last_t
     end

end
