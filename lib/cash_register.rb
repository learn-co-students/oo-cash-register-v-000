
class CashRegister
attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction

def initialize(discount = nil)
  self.total = 0 
  self.items = []
  if discount 
    self.discount = discount
  end
end

def add_item(title, price, quantity = nil)
  self.last_transaction = [quantity, price]
  if quantity
    self.quantity = quantity 
      self.total += (price * quantity)
      self.total
    quantity.times{@items << title}
  else 
    self.total += price 
    @items << title 
  end 
end

def apply_discount
  if discount
    self.total *= (1-(discount * 0.01))
    "After the discount, the total comes to $#{self.total.to_i}." 
  else
    "There is no discount to apply."
  end
end 

def void_last_transaction
  if self.last_transaction
      self.last_transaction[0] = 1 unless self.last_transaction[0]
      self.last_transaction[0].times {self.items.pop}
      self.total -= (self.last_transaction[0] * self.last_transaction[1])
    end 
end

end
