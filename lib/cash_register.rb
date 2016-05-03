class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(item,price,quantity = 1)
  @total += price * quantity
  quantity.times { @items << item }
end

def apply_discount
  if @discount != 0
    @total -= (discount/100.0 * @total).to_i
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end  
end

def void_last_transaction
  @total -= @total
end

end
