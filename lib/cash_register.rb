require 'pry'

class CashRegister

	attr_accessor :total, :discount, :items, :new_transaction, :discount_transaction, :title, :price, :quantity
	#the discount is a percentage
	
	
	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
		@new_transaction = 0
		@discount_transaction = 0
	end
	
	def add_item(title, price, quantity = 1)
		@title = title
		@price = price
		@quantity = quantity
		self.new_transaction = price*quantity
		self.total += self.new_transaction
		quantity.times do 
			@items << title
		end
		self.total
	end
		
	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			transaction_discount = (self.total * self.discount) / 100
			self.total = self.total - transaction_discount
			"After the discount, the total comes to $#{self.total}."
		end
	end
	
	def items
		@items
	end	
	
	def void_last_transaction
		self.total = self.total - self.new_transaction
		self.total
	end
	
end
