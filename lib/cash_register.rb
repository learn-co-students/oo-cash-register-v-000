class CashRegister
  attr_accessor :total, :discount, :items, :price, :last_transaction

def initialize(discount = 0 )
  @discount = discount
  @total = 0
  @items = []
end

def add_item( title, price, qty=1)
  qty.times do
    items << title
  end
  self.total += (price * qty)

  self.last_transaction = price * qty

end

def apply_discount

discounted = self.total *=  (1-(discount/100.0))
    if discount != 0
      "After the discount, the total comes to $#{discounted.to_int}."
    else
      "There is no discount to apply."
    end
end

def void_last_transaction
  self.total -= self.last_transaction
end


end
