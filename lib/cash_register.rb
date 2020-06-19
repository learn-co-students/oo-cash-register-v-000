class CashRegister

attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @last = 0
end

def total
  @total
end

def add_item(item, price, quantity = 1)
  quantity.times { @items << item }
  pnew = price * quantity
  @last = pnew
  new_t = @total
  @total += pnew
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    numb = (@discount.to_f / 100)
    @total = @total - (@total * numb)
    return "After the discount, the total comes to $#{@total.round}."
  end
end

def items
  @items
end

def void_last_transaction
  @total -= @last
end

end
