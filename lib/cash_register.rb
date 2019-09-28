class CashRegister
  attr_accessor :total, :discount, :previous_total, :items
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @previous_total = 0
    @items = []
  end

def add_item(title, price, quantity=1)
  self.total += price * quantity
  quantity.times do
    @items << title
  end
  self.previous_total = price * quantity
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total = @total - @total * discount / 100
    "After the discount, the total comes to $#{@total.to_i}."
  end
end

def void_last_transaction
  @total = @total - @previous_total
end

end
