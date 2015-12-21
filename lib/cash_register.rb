class CashRegister
 attr_accessor :total,:cash_register_with_discount, :last_item
  @@all_items = []
  def initialize(option=0)
    @@all_items.clear
    @total = 0
   @cash_register_with_discount = option
   end

   def discount
    @cash_register_with_discount 
   end

   def add_item(item,price ,quantity = 1)
      @last_item = price
      quantity.times{@@all_items << item}
     @total = @total + (price * quantity)
    end

    def apply_discount
      if @cash_register_with_discount == 0
          "There is no discount to apply."
        else      
         @total = (@total - @total * (@cash_register_with_discount * 0.01)).to_int
        "After the discount, the total comes to $#{@total}."
        end
    end

    def items
      @@all_items
    end

    def void_last_transaction
        @total = @total - @last_item
    end

end
