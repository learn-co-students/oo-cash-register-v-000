
class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    @total
  end
	def add_item(title, price, quantity = 1)
  	quantity.times do
  		@items << title
  	end
  	@total += price * quantity
	end
	def apply_discount
    @total = total - (total * discount / 100)
    return "After the discount, the total comes to $#{@total.floor}." if discount > 0
    return "There is no discount to apply." if discount == 0
	end
	def items
	  @items
	end
	def void_last_transaction
	  @total = 0
	end
end