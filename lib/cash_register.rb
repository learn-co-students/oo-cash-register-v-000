class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		@last_transaction = price

		quantity.times { @items << title }
		self.total += price * quantity
	end

	def apply_discount
		if discount
			self.total -= (( discount / 100.0 ) * self.total).to_i
			"After the discount, the total comes to $#{self.total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		self.total -= self.last_transaction
	end
end
