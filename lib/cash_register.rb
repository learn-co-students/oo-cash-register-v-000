require"pry"
class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @last_transaction = 0
end

def add_item(item, cost, increase = 1)
  item_info = {}
      item_info[:name] = item
      item_info[:cost] = cost
      item_info[:increase] = increase

      @items << item_info

      @total += cost * increase
end

def apply_discount
  @total = @total - discount.to_f / 100 * @total
  if @discount != 0
    "After the discount, the total comes to $#{@total.to_i}."
# binding.pry
  else
    "There is no discount to apply."
  end
end

def items
  @items.collect do | item_info |
    item_info[:name].split(",") * item_info[:increase]
  end.flatten
end

def void_last_transaction
  @total = @last_transaction.to_f
  end
end
