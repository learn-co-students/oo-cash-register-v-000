class CashRegister

attr_accessor :total, :discount, :items, :transactions



def initialize(discount=nil)
  @total = 0
  @discount = discount
  @items = []
  @transactions = []
end


def add_item(title, price, quantity=1)
  quantity.times {@items << title}
  @transactions << price
  @total += price * quantity
  
end


def apply_discount
  if @discount != nil
    @total = @total - (@total  * @discount / 100)
    "After the discount, the total comes to $#{@total}."

  else
    "There is no discount to apply."
  end
end


def items
  @items

end


def void_last_transaction
  # store price in an array. update total
  @total -= @transactions.last

end


end


