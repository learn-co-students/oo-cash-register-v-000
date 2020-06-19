class CashRegister
attr_accessor :cash_register, :cash_register_with_discount, :total, :discount

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
#accepts new item and adds the price to the total
  items = (title + " ") * quantity
  @items << items.split(" ")
  subtotal = (price * quantity)
  @last_transaction = subtotal
  @total = @total + subtotal


def apply_discount
  if @discount == nil
    "There is no discount to apply."
  elsif @discount != nil
    @total = @total - (@total*@discount/100)
    "After the discount, the total comes to $#{@total}."
  else
    @total
    end
  end
end

def items
  @items.flatten!
  @items
end

def void_last_transaction
  @total = @total - @last_transaction
end

end
