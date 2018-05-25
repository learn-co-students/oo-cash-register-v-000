require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :price

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity

    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * (@discount * 0.01))
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end
end

# here is their (slightly prettier) solution:
# class CashRegister
#
#   attr_accessor :items, :discount, :total, :last_transaction
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end
#
#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
# end
