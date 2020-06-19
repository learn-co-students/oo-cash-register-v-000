class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(item, price, quantity=1)
  @last_transaction = (price * quantity)
  @total += @last_transaction
  quantity.times do
  @items << item
end
end

def apply_discount
  if discount == 0
    "There is no discount to apply."
  else
    @total -= @total * @discount/100.to_f
    @total = @total.to_i
    "After the discount, the total comes to $#{@total}."
end
end

def void_last_transaction
  self.total = self.total - @last_transaction
  self.total
end
end
