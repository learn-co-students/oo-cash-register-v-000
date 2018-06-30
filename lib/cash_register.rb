class CashRegister
  
attr_accessor :total, :discount, :items, :previous_item

def initialize(discount = 0)
  @items = []
  @total = 0
  @discount = discount
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @total += price * quantity
  quantity.times {@items << title}
  @previous_item = price * quantity
end

def apply_discount
  @total = (@total * 0.8)
  if @discount != 0
    puts "After the discount, the total comes to #{"@total
  else
     puts "There is no discount to apply.""
    
    
  end
end

def items
end

def void_last_tranaction
end


end