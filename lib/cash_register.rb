class CashRegister

	attr_accessor :total, :discount, :items, :previous_transaction

	def initialize(disc=0)
		@total = 0
		@discount = disc
		@items = []
		@previous_transaction = 0

	end

	def add_item(item,price,quantity=1)

		transaction = price * quantity

		self.previous_transaction = transaction
		self.total += transaction

		for i in 1..quantity
			self.items << item
		end

	end

	def apply_discount()

		if self.discount == 0
			"There is no discount to apply."
		else
			self.total = self.total * (1 - (@discount/100.0))
			"After the discount, the total comes to $#{@total.to_i}."

		end

	end

	def void_last_transaction()

		self.total -= self.previous_transaction

	end

end
