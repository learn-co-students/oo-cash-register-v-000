require 'pry'

class CashRegister
	attr_accessor :total, :discount, :item_name, :price, :quantity, :subtotal, :item_tracker

	def initialize(discount=@discount)
		self.total = 0
		self.discount =discount
		self.item_tracker = []
	end


	def add_item(item_name, price, quantity=1)
		self.item_name = item_name
		num_item_names= Array.new(quantity,"")
		num_item_names= num_item_names.fill(item_name)
		self.item_tracker << num_item_names
		self.price
		self.quantity = quantity
		self.subtotal = price * quantity
		self.total= self.total + self.subtotal
	end

	def apply_discount
		if self.discount
			self.subtotal = self.total * (self.discount/100.0)
			self.total = self.total - self.subtotal.to_i
			cashier= "After the discount, the total comes to $#{self.total}."
		else
			cashier= "There is no discount to apply."
		end
	end

	def items
		self.item_tracker.flatten
	end

	def void_last_transaction
		self.total = self.total - self.subtotal

	end

end
