require 'pry'

class CashRegister

	attr_accessor :total, :discount
	@@items = []
	@@price_list = []

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@@items = []
	end

	def total
		@total
	end

	def add_item(title, price, quantity = 1)
		@@items.fill(title, @@items.size, quantity)
		@@price_list.fill(price, @@items.size, quantity)
		@total = @total + price * quantity
	end

	def apply_discount
		@total = @total * (100 - @discount) / 100
		if self.discount != 0
			return "After the discount, the total comes to $#{@total}."
		else
			return "There is no discount to apply."	
		end
	end

	def items
		@@items
	end

	def void_last_transaction
		@total = @total - @@price_list[-1]
	end

end
