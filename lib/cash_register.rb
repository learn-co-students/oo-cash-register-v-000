class CashRegister
attr_accessor :total, :items, :discount, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items =[]
end

def add_item(title, price, quantity=1)
  @total += price*quantity
  #@items<<title
  quantity.times { @items << title}
  @last_transaction = price*quantity
end

def apply_discount
  if discount==0
    "There is no discount to apply."
  elsif discount!=0
    @total = (@total *((100.00-discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{@total}."
  end
end

def void_last_transaction
  @total = @total - @last_transaction
end
end
