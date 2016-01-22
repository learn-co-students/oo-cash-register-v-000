require "pry"

class CashRegister

	attr_accessor :total, :discount, :items, :last_item

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item (title, price, quantity = 1)
		@total += price*quantity
		quantity.times do 
			@items << title
		end
		@last_item = price
	end

	def apply_discount
		if @discount == 0 
			"There is no discount to apply."
		else
			@total -= @total*(@discount/100.0)
			@total = @total.to_i
			"After the discount, the total comes to $#{@total}."
		end
	end


	def void_last_transaction
		@total -= @last_item
	end













end