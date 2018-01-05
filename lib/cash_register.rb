
class CashRegister

	attr_accessor :total, :discount


	def initialize(*discount)
	@total = 0
	@discount = 20.0
	@items = []
	
	
	end

	def self.total
		@total
	end


	def add_item(item, price, quantity = 1)
	  item_price = price * quantity
	  @subtotal = item_price
	  @total = @total + @subtotal
	  @total
	  for quantity in 1..quantity
	  	@items << item
	  end

	end


	def apply_discount
		p = @discount/100
		emp_dis = p * @total
		@total = @total - emp_dis
			if emp_dis !=0
			"After the discount, the total comes to $#{@total.to_i}."
		elsif emp_dis == 0
			"There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = @total - @subtotal
	end


end
