class CashRegister
	attr_reader :discount, :items
	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
		@last = 0
	end
		
	def add_item(item, price, quantity=1)
		@last = price*quantity
		@total+= @last
		@items << item
	end
	
	def apply_discount
		if @disount != 0
			@total = @total * (1-@discount/100)
			puts "After the discount, the total comes to #{@discount}."
		else
			puts "There is no discount to apply."
		end
	end
	
	def void_last_transaction
		@total-=@last
	end
end
