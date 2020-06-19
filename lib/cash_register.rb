class CashRegister

	attr_accessor :items, :total, :discount, :title, :price, :last_transaction
	


	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		self.total += (price * quantity)

		quantity.times {@items.push(title)}

		self.last_transaction = price * quantity
	end

	def apply_discount
		if discount != 0
			self.total = (@total * (100-@discount)/100)
			"After the discount, the total comes to $#{self.total}."
		else
			"There is no discount to apply."
		end
	end

	def items
		return @items
	end

	def void_last_transaction
		self.total = self.total - self.last_transaction
	end
end