class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
	end

	def add_item(item, price, quantity = 1)
		self.total += price * quantity
		@items ||= []
		quantity.times {@items << item}
		@last_transaction = price * quantity
	end

	def apply_discount
		return "There is no discount to apply." if discount == 0
		self.total = total * (100 - discount) / 100
		"After the discount, the total comes to $#{self.total}."
	end

	def void_last_transaction
		@total -= @last_transaction
	end


end