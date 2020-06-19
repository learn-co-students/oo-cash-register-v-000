class CashRegister
	attr_accessor :total, :discount, :items, :price, :quantity, :title


	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		@title = title
		@price = price
		@quantity = quantity

		if quantity > 0
		@total = @total + (price * quantity)
		counter = 0
		while counter < quantity 
			@items << @title
			counter += 1
		end
	else
		@total = @total + (price * quantity)
	end


	end

	def apply_discount
		if @discount > 0
		@total =  @total - ((@total * @discount)/100)
		"After the discount, the total comes to $#{@total}."
	else
		"There is no discount to apply."
	end
end

	def items
		@items
	end

	def void_last_transaction
		@total -= @price
	end







end
