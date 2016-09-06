class CashRegister

	attr_reader :discount
	attr_accessor :total

	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@transactions = []
	end

	def add_item(title, price, quantity = 1)
		@total += price * quantity
    quantity.times { |i| @transactions << {title:title,price:price} }    	
	end

	def apply_discount
		if @discount != nil
		  @total -= (@discount * @total / 100)
		  "After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

  def items
    @transactions.map { |item| item[:title] }
  end

  def void_last_transaction
  	last = @transactions.pop
  	@total -= last[:price]
  end
  
end
