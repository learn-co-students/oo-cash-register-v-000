class CashRegister


  attr_accessor :total, :discount, :title, :price, :last_transaction


def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  end

def total
  @total
end

def add_item(title, price, quantity=1)
  self.total += price*quantity
         items.fill(title, items.size, quantity-1)
         items << title
         self.last_transaction = price * quantity



end

def apply_discount
  if discount > 0
    discountPerc = (100-self.discount).to_f
    test = (discountPerc/100)

    self.total = self.total * test

    return "After the discount, the total comes to $#{self.total.round(0)}."
  else
    return "There is no discount to apply."
  end

end

def items
  @items
end

def void_last_transaction

   self.total = self.total - self.last_transaction


 end

end
