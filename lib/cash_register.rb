class CashRegister

attr_accessor :total, :discount, :title, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @last_transaction = [] #first element = price, 2nd elment = quantity
end

def add_item (title, price, quantity = 1)
  @title = title
  @total = @total + price * quantity
  quantity.times do
    @items << title
  end
  @last_transaction[0]=price
  @last_transaction[1]=quantity
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total = @total * (100-discount)/100
    "After the discount, the total comes to $#{@total}."
  end
end



def void_last_transaction
  @last_transaction[1].times do
    @items.pop
    @total = @total - @last_transaction[0]
  end
end

end
