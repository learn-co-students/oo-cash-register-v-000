class CashRegister
	attr_accessor :total, :discount, :title, :price, :quantity

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items =[]
	end 

	def self.total
		@total
	end

	def add_item(title, price, quantity=1)
		@title = title
		@price = price
		@quantity = quantity
		if quantity == 1
			@total += price
			@items << title
		else
			@total += price * quantity
			@items << @quantity.times.collect {@title}
		end
		@total
	end

	def apply_discount
		if @discount > 0
			num = @price * @discount
			amount_off = num/100
			new_total = @price - amount_off
			@total = new_total
			success_message = "After the discount, the total comes to $#{new_total}."
		else
			error_message = "There is no discount to apply."
		end	
	end

	def items
		@items
	end
end