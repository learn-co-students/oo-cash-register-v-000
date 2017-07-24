class CashRegister
	require 'pry'
	attr_accessor :total, :discount, :quantity, :items, :price
	#@@total = 0
	


	def initialize(discount = 0)
		@discount = discount
		@total = 0
		@items = []
	end

	def add_item(item, price, quantity = 1)
		@quantity = quantity
		#@@total += @total
		@price = price
		@total += (price * quantity)
			while quantity > 0
				quantity -= 1
				@items << item
			end
	end

	def apply_discount
	
		if @discount > 0 
			@total = ((((100 - discount).to_f) / 100) * @total).to_i
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		#binding.pry
		@total = @total - @price
	end

end
