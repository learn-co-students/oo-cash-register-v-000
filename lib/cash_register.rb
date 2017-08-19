class CashRegister
	attr_accessor :total, :discount, :items, :old_total, :old_items

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
		@old_items = []
		@old_total = 0
	end

	def add_item(item, price, count=1)
		self.old_items = self.items
		self.old_total = self.total
		count.times {self.items << item}
		count.times {self.total += price}
	end

	def apply_discount
		if self.discount > 0
			self.total =  self.total - (self.total * 0.2).to_i
			"After the discount, the total comes to $#{total}."
		else
			return "There is no discount to apply."
		end 
	end

	def void_last_transaction
		self.items = self.old_items
		self.total = self.old_total
	end 

end
