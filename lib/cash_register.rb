class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
  quantity.times do 
    @items << title 
    end
    @last_transaction = self.total
end

def apply_discount
    if discount != nil
    self.total -= (total * (discount / 100.0))
    "After the discount, the total comes to $#{self.total.to_i}."
    else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  self.total = 0
end

end
