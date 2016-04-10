class CashRegister

  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
  	@total = 0
  	@discount = discount
  	@items = []
  end

  def add_item(item, price, quantity = 1)
  	quantity.times do |items|
  	  @items << item
  	end
  	@total += price * quantity
  	@last_transaction_amount = price * quantity
  end

  def apply_discount
    if @discount == 0
  	  "There is no discount to apply."
    else
  	  @total -= (@total * (@discount * 0.01))
  	  return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
  	@items
  end

  def void_last_transaction
  	@total -= @last_transaction_amount
  end

end
