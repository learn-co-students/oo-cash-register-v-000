require 'pry'

class CashRegister

	attr_accessor :total, :discount, :items, :last_transaction_value

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
		@last_transaction_value = 0
	end

	def add_item(title, price, quantity=1)
		@total += (price * quantity)

		quantity.times do 
			@items << title
		end

		@last_transaction_value = price * quantity
	end

	def apply_discount
		#binding.pry
		@total = @total * (1 - (@discount / 100.0))
		@total= @total.to_int

		if @discount != 0
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		@total -= @last_transaction_value
	end

end
