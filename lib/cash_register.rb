require'pry'
class CashRegister
	
	attr_accessor :total, :discount
	attr_reader :items
	
	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end
	
	def add_item(item, price, qt = 1)
		qt.times do 
			@items << [item, price, 1]
		end
		@total += qt * price
	end
	
	def apply_discount
		if @discount > 0
			total =  @total * (1 - (@discount * 0.01))
			@total = total.to_i
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end
	
	def items
		@items.map{|item| item[0]}
	end
	
	def void_last_transaction
		@total -= @items.pop[1]
	end
	
end
