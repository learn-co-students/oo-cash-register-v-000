class CashRegister

attr_accessor :discount, :total

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  @items_and_prices = {}
end

def total
  @total
end

def add_item(title, price, quantity=1)
  @items = @items.fill(title, @items.size, quantity)
  @quantity = quantity
  @items_and_prices[title] = price
  @last_transaction = title
  @total += price * quantity
end

def apply_discount
  if @discount != 0
    @total = @total - (@total * (@discount/100.0))
    "After the discount, the total comes to $#{@total.round}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @items_and_prices[@last_transaction]
end

end
