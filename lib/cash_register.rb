require 'pry'

class CashRegister
	attr_accessor :total, :discount

	def initialize(discount=0)
		@cart = []
		@total = 0
		@discount = discount
	end

	def add_item(title, price, quantity=1)
		quantity.times do
			@cart << [title, price]
		end
		@total += price*quantity
	end

	def apply_discount
		if @discount == 0
			return "There is no discount to apply."
		end
		@total = @total - @total*@discount.to_f/100
		"After the discount, the total comes to $#{@total.to_i}."
	end

	def items
		@cart.collect {|item| item[0]}
	end

	def void_last_transaction
		@total -= @cart.last[1]
	end

end

