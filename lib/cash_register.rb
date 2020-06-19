class CashRegister
attr_accessor :total, :last_price
attr_reader :discount


def initialize(discount=0)
  @discount = discount
  @total = 0
  @items = []
end

def add_item(title, price, quantity=1)
  @title = title
  @price = price
  @quantity = quantity
  @total += price*quantity
  quantity.times do
  @items << title
  @last_price = price
end
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total = @total - (@total*0.2)
    "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @last_price
  @total
end

end
