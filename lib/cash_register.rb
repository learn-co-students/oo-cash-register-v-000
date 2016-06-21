class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :quantity
  attr_accessor :items
  attr_accessor :last_transaction


def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  @last_transaction = 0 
end  

def add_item(title, price, quantity=1)
  self.total += price*quantity 
  @quantity = quantity
  @itmes = if quantity == 1
             items<<title
           else 
            until quantity == 0 
              items<<title
              quantity = quantity -1
            end 
  end
  @last_transaction = price*quantity
end 

def apply_discount
  if @discount == 0 
    return "There is no discount to apply."
  else  
  return "After the discount, the total comes to $#{@total = (self.total*((100-discount)*0.01)).floor}."
end
end

def items 
  @items
end

def void_last_transaction 
  @total = @total - last_transaction
end 

end
