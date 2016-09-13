class CashRegister

	attr_accessor :total, :discount, :item_array

	def initialize(discount=0)
		@discount = discount
		@total = 0
		@item_array = []
	end
    
    def add_item(title, price, quantity=1) 
        @item_array << [Array.new(quantity, title), price].flatten
        @total += (price * quantity) 
    end

    def apply_discount
    	if @discount > 0
    	    disc = (100 - @discount).to_f / 100
    	    @total *= disc
    	    "After the discount, the total comes to $#{@total.to_i}."
    	else
    		"There is no discount to apply."
    	end 
    end
    
    def items
    	@item_array.flatten.find_all{ |element| element.is_a?(String)}
    end
    
    def void_last_transaction
    	@total -= @item_array[-1][-1]
    end

end

#fullstacck@flatiron.com
