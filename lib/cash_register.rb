class CashRegister
  attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @transaction_tracker = []
end

def add_item(item, price, quantity = 1)
  total_price = price * quantity
  @total = @total + total_price
 quantity.times do
  @items << item
  end
  @transaction_tracker << @total
end

def apply_discount
  if @discount > 0
    discount_percent = Float(@discount) / 100
  discount_amount =  @total * discount_percent
  @total = @total - Integer(discount_amount)
  "After the discount, the total comes to $#{@total}."
else
  "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  amount_to_void = @transaction_tracker.pop
  @total = @total - amount_to_void
end

end
