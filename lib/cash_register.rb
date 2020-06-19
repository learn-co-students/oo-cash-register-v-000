class CashRegister

	attr_accessor :total, :discount, :last_transaction, :items, :title

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@last_transaction=0
		@items_array = []
	end

	def add_item(title, price, quantity=1)
		@last_transaction = (price*quantity)
		@total += @last_transaction
		quantity.times do
			@items_array << title
		end
	end

	def apply_discount
		@total = self.total
		if @discount != 0
		@total = (@total * 0.8).to_i
		@total
		return "After the discount, the total comes to $#{@total}."
		else
		return "There is no discount to apply."
		end
	end

	def items
		@items_array
	end

	def void_last_transaction
		@total -= @last_transaction
	end

end
