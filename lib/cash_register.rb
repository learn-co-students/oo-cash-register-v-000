require 'pry'

class CashRegister

attr_accessor :total, :discount, :item_details


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @shopping_cart = []
end

def total
  @total
end

def add_item(item, cost, quantity = 1)
    @item_details = {}
    @item_details[:name] = item
    @item_details[:price] = cost
    @item_details[:number] = quantity

    @shopping_cart << @item_details

    item_total = cost * quantity
    @total = item_total + total
end

def apply_discount
  new_price = @total - (@total * (@discount/100))

  if @discount == 0
    return "There is no discount to apply."
  end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
end

def items
  added_items = []

  @shopping_cart.each do |items|
    name = items[:name]
    quantity = items[:number]

    quantity.times {added_items.push name}
  end
  added_items
end

def void_last_transaction
  @total = total - (@item_details[:price])
end

end
