require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction



def initialize(discount = 0.0)
 @discount = discount.to_f
  @total = 0
    @items = []
end

  def self.total
@total
end

def add_item(title, price, quantity = 1)
quantity.times do
  @items << title
end


  @prices = []
  @prices << price
  @last_transaction = @prices[-1]
self.total = @total + price.to_f * quantity.to_f
end

def apply_discount
  #price = self.discount
  if @discount == 0.0
    "There is no discount to apply."
  else
total_sum = self.total
discounted_price = @discount.to_f * 10
@total = total_sum - discounted_price
"After the discount, the total comes to $#{total.to_i}."
end
end


def items
  @items
end

def void_last_transaction
@total = @total - @last_transaction.to_f
end

end
