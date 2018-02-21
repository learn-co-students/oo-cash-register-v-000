class CashRegister
attr_accessor :total, :price, :discount, :item


def initialize(discount=0)
 @total = 0
 @discount = discount
 @item = []
end

def total
end

def add_item(price, total)

end

def apply_discount
end

def items

end

def void_last_transaction

end
end
