class CashRegister
	@@prices = []
	@@items = []

	attr_accessor :total, :discount

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@@items.clear
	end

	def add_item(title, price, quantity = 1)
		@total += price*quantity
		@@prices << price
		@@items.concat([title]*quantity)
	end

	def apply_discount
		@total = @total * (100 - @discount)/100
		@discount == 0 ? "There is no discount to apply." :  "After the discount, the total comes to $800."
	end

	def items
		@@items
	end

	def void_last_transaction
		@total = @total - @@prices.pop
	end
end
