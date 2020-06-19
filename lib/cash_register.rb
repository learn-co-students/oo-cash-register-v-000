class CashRegister
	attr_accessor :total, :discount, :items, :last

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def total
		@total
	end

	def add_item(title, price, quantity=1)
		transaction_total = (price*quantity)
		transaction_items = ["#{title}"].cycle(quantity).to_a
		self.total += transaction_total
		@last = transaction_total
		transaction_items.each { |item| @items << item }
	end

	def apply_discount
		if discount == 0
			message = "There is no discount to apply."
		else
			self.total -= ((self.discount/100.00)*self.total).to_i
			message = "After the discount, the total comes to $#{self.total}."
		end
		message
	end

	def items
		@items
	end

	def void_last_transaction
		self.total -= self.last
	end

end
