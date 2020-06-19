class CashRegister
  attr_accessor :total, :discount, :items


def initialize(discount = 0)
  self.total = 0
  if discount != 0
    self.discount = discount
  else
    self.discount = 0
  end
  @items = []
end

def add_item(title, price, quantity = 0)

  if quantity != 0
    price = price * quantity
    quantity.times {
     @items << title
    }
  else
  @items << title
end
   @total += price
end

def apply_discount
  if @discount != 0
    a = "." + @discount.to_s
    @discount = a.to_f
    @discount = self.total * self.discount
    @total = @total - @discount
    return "After the discount, the total comes to $#{@total.to_i}."
  end
  if @discount == 0
    return "There is no discount to apply."
  end
end

def items
   @items
end

def void_last_transaction
  @total = 0.0
end

end
