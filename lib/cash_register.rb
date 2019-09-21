class CashRegister

attr_accessor :total, :discount, :items

def initialize(discount = 0 )
  @total = 0
  @discount = discount
  @items = []
end

def add_item(item, price, amount= 1)
  self.total = total + price * amount

  amount.times do item
    self.items << item
  end
end

def void_last_transaction
   self.total = self.total - total
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."

  else
    num = @discount * 0.01
    @total= @total - (self.total * num)

    new_total = @total.floor
    return "After the discount, the total comes to $#{new_total}."
    end
end


end
