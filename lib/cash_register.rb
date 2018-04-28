class CashRegister

attr_accessor :total, :discount, :title, :price

def initialize(discount = 0)
  @discount = discount
  @total = 0
end

def add_item(title, price)
end

def apply_discount
end

def items
end

def void_last_transaction
end

end
