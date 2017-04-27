require 'pry'

class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def total
		@total
	end

	def add_item(title, price, quantity = 1)
		self.total += (quantity * price)
		i = 0
		while i < quantity

			@items << title
			i += 1
		end
		@last_transaction = price
	end

	def apply_discount
		if self.discount > 0
			self.total = @total - (@discount * 10)
		
		"After the discount, the total comes to $#{@total}."
		elsif self.discount == 0 || self.discount == nil
			"There is no discount to apply."	
		end
	end

	def items
		@items
		# binding.pry
	end

	def void_last_transaction
		self.total = @total - @last_transaction
	end

end


