class CashRegister 

	attr_accessor :total, :discount, :list, :last_transaction

	def initialize (discount = 0)
		@total = 0
		@discount = discount 
		@list = []
		@last_transaction = []
	end

	def total
		@total 
	end

	def add_item(item, price, number=1)
		@total += price * number 
		a = 0
		while a < number 
			@list << item
			@last_transaction << price
			a +=1
		end 
	end 

	def apply_discount 
		@discount = @discount *0.01
		@discount = @total * @discount 
		@total -= @discount
		new_total = @total.to_s
		if @discount == 0 
			"There is no discount to apply."
		else	
			"After the discount, the total comes to $#{new_total.chomp(".0")}."
		end
	end

	def items 
		@list
	end

	def void_last_transaction
		@total -= @last_transaction[-1]
	end


end
