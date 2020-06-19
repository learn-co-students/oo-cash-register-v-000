class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		self.total += (price * quantity)
		quantity.times do 
			items << title
		end
		@last_transaction = price * quantity
	end

	def apply_discount
		self.total = (total * (1 - (discount * 0.01))).to_i
		if discount == 0
			"There is no discount to apply."
		else
			"After the discount, the total comes to $#{self.total}."
		end	
	end

	def void_last_transaction
		self.total = self.total - self.last_transaction
	end
end