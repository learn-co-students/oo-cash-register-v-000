class CashRegister

  attr_accessor :total, :discount, :items, :last




def initialize(discount=0)
  @total = 0
  @discount=discount
  @items = []
  @last = {}

end

def self.total
  @total
end

def add_item(title, price, quantity=1)
  @total= self.total+(price*quantity)
  quantity.times do @items << title end
    @last = { }
    @last[title] = price
  self.last = price *quantity
end

def apply_discount
  if discount==0
    "There is no discount to apply."
  else
    self.total = (total-(total*(discount.to_f/100))).to_i
    "After the discount, the total comes to $#{self.total}."
  end
end
def items
  @items
end

def void_last_transaction
  @total = self.total - @last
end

end
