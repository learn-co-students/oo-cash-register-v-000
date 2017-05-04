class CashRegister

	attr_accessor :total, :discount, :last_price
	attr_reader :items


	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		quantity_counter = 0
		while quantity_counter < quantity do 
			@items << title
			quantity_counter+=1
		end
			@total = @total + (price.to_f * quantity.to_f)
			@last_price = price * quantity
	end

	def apply_discount
		if discount != nil
			@total = (@total * (1 - (@discount.to_f/100))).to_i
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		@total = @total - @last_price
	end

end
