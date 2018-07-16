class ClassRegister

attr_accessor :discounts, :total

def initialize(discount = nil)

  @discount = discount
  @total = 0
end

def add_item(item, price, amount = 1)
  self.total = price * amount

end

def apply_discount
if discount > 0 && total
  self.total = (self.total * discount.to_f)/100)).to_i
else
  self.total
end
end

end #end of the ClassRegister class
