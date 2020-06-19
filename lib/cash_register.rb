class CashRegister

	attr_accessor :discount, :total

	def initialize(discount = nil)
		@total = 0
		@items = []
		@discount = discount
		@last_price = 0
	end

	def total
		return @total
	end

	def add_item(title, price, quantity = nil)	
		@title = title
		@price = price
		if quantity == nil
			@total = @total + price
			@items << @title 
		else
			@total = @total + price * quantity
			i = 0 
			while i < quantity
				@items << @title 
				i+=1
		    end	
		end
		@last_price = @price
	end

	def apply_discount
		if @discount == nil
			return "There is no discount to apply."
		else
			@total = @total - @total * self.discount/100.to_f
			return "After the discount, the total comes to $#{@total.to_int}."
		end
	end
	
	def items
		return @items
	end

	def void_last_transaction
		@total = @total - @last_price

	end

end
