
class CashRegister

	attr_accessor :total, :items, :last, :discount

	def initialize(discount=0)
		@discount=discount
		@total=0
		@items=[]
	end

	def add_item(title, price, quant=1)
		@last = [@total,@items]
		quant.times do
			@total += price
			@items << title
		end
	end

	def void_last_transaction
		@total = @last[0]
		@items = @last[1]
	end

	def apply_discount
		if @discount == 0
			return "There is no discount to apply."
		else
			@total -= @discount*10
			return "After the discount, the total comes to $#{@total}."
		end
	end

end