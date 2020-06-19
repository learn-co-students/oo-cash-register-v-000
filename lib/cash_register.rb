require 'pry'
class CashRegister
  attr_accessor :discount, :total
	attr_reader   :items

	def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_cost = 0
	end

	def add_item(item, price, quantity = 1)
    cart_total = price * quantity
    @total += cart_total
  (quantity).times {@items << item}
  @last_cost = cart_total
	end

	def apply_discount
    return "There is no discount to apply." if @discount == 0
    discount = (@discount.to_f/100.to_f)
    @total -= @total * discount
    "After the discount, the total comes to $#{@total.to_i}."
	end

	def void_last_transaction
    @total -= @last_cost
	end
end
