require "pry"

class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = 0)
		self.discount = discount
		self.total = 0
		self.items = []
	end

	def add_item(item, amount, quantity = 1)
		self.last_transaction = amount * quantity
		self.total = self.total + (amount * quantity)
		quantity.times do
			self.items << item
		end
	end

	def apply_discount
		if self.discount > 0
				self.total = self.total - (self.discount.to_f / 100) * self.total
				"After the discount, the total comes to $#{self.total.to_i}."
			else
				"There is no discount to apply."
		end
	end

	def void_last_transaction
		self.total = self.total - self.last_transaction
	end
end
