class CashRegister
	attr_accessor :total
	attr_accessor :discount
	attr_accessor :items
	attr_accessor :last_transaction

	def initialize(discount=0)
		@total = 0
		@items = []
		@discount = discount
		@last_transaction = {}
	end

	def add_item(title, price, quantity=1)
		@total += price*quantity
		@last_transaction = {:title => title,
							:price => price, 
							:quantity => quantity}
		quantity.times {@items << title}
	end

	def apply_discount
		if @discount != 0 
			discount_price = @total * @discount / 100
			@total -= discount_price
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		quantity = @last_transaction[:quantity]
		price = @last_transaction[:price]
		quantity.times {
			@total -= price*quantity
			@items.pop
		}
	end
end
