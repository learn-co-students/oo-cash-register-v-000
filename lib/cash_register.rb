class CashRegister

  	attr_accessor :total, :discount, :items, :last_transaction_value

	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@items = []
  	end

  	def add_item(title, price, quantity = nil)
		if quantity == nil
			@total += price
			@items << title
			@last_transaction_value = price
			@quantity = 1
		  else
			@total += price * quantity
			@quantity = quantity
			while quantity > 0
			@items << title
			quantity -= 1
		  	end
       	    		@last_transaction_value = price * @quantity
        	  end
        end

  	def apply_discount
  		if self.discount == nil
  			message = "There is no discount to apply."
  		else
  			self.total = self.total - self.total * @discount/100
  			message = "After the discount, the total comes to $#{self.total}."
  		end
  	end

  	def items
  		@items
  	end

    def void_last_transaction
  		self.total -= @last_transaction_value
      self.items.pop(@quantity)
  	end

end
