require 'pry'
class CashRegister 
	attr_accessor :items, :discount, :total

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		quantity.times {|i| @items << title }
		@total += quantity * price
	end

	def apply_discount
		@total = (@total - (@total * (@discount.to_f / 100))).to_i 
		if @discount > 0
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
		@total = @items.size - 1
	end

end