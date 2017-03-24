require 'pry'

class CashRegister

	attr_accessor :discount, :total

	def initialize(discount = 0)
		@discount = discount
		@total = 0
		@@items = []
	end

	def add_item(item, price, qty = 0)
    if qty > 0
			price*= qty
			qty.times {@@items << item}
		else
			@@items << item
		end
    @last_transaction = price
		@total += price
	end

	def apply_discount
		msg = ""
		if @discount > 0
			@total-= @discount
			msg = "After the discount, the total comes to $#{@total}."
		else
			msg = "There is no discount to apply."
		end
		msg
	end

	def items
		@@items
	end

  def void_last_transaction
		@total -= @last_transaction
	end

end
