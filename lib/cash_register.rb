class CashRegister
	attr_accessor :total, :discount
	#attr_reader :items
	def initialize(discount=0)
		@total = 0
		@prev_total = 0
		@discount = discount
		@items = []
		@prev_items = []
	end

	def add_item(title, price, quantity=1)
		@prev_items = @items
		@items = @items.concat([title] * quantity)
		@prev_total = @total
		@total = @total + (price*quantity)
	end

	def apply_discount
		if @discount>0
			@total = @total-(@total*(@discount/100.0))
			return "After the discount, the total comes to $#{@total.to_i}."
		else
			return "There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@items = @prev_items
		@total = @prev_total
	end
end