class CashRegister
	attr_reader :discount, :items
	attr_accesor :total
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
			@total = @total * (1.to_f-@discount.to_f/100.to_f)
			@total = @total.to_i
			puts "After the discount, the total comes to #{@total}."
		else
			puts "There is no discount to apply."
		end
	end
	
	def void_last_transaction
		@total-=@last
	end
end
