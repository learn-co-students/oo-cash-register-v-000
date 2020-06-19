
class CashRegister

	attr_accessor :employee_discount, :total, :items, :last_transaction

	def initialize(employee_discount = 0)
		@total = 0
		@employee_discount = employee_discount
		@items = []
		@last_transaction = 0
	end

	def discount
		@employee_discount
	end

	def add_item(title, price,quantity=1)
		@total += (price * quantity)
		@last_transaction = (price * quantity)
		quantity.times do
			@items << title
		end
	end

	def apply_discount
		if employee_discount != 0
			@total = @total * (100 - @employee_discount) / 100 
			return "After the discount, the total comes to $#{@total}."
		else
			return "There is no discount to apply."
		end
	end
	
	def void_last_transaction
		@total = @total - @last_transaction
	end
end
