# Refactored code

class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times{@items << item}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
     "There is no discount to apply."
   end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end


# Old code below

# class CashRegister
#   attr_accessor :total

#   @@all_items = []

#   def initialize(discount=0)
#     @@all_items.clear
#     @total = 0
#     @cash_register_with_discount = discount
#   end

#   def discount
#     @cash_register_with_discount
#   end

#   def add_item(item, price, quantity=1)
#     quantity.times{@@all_items << item}
#     @total += price * quantity
#     @last_transaction = @total
#   end

#   def apply_discount
#     if @cash_register_with_discount == 0
#       "There is no discount to apply."
#     else
#     @total = @total - (@total * (@cash_register_with_discount * 0.01)).to_i
#     "After the discount, the total comes to $#{@total}."
#     end
#   end

#   def items
#     @@all_items
#   end

#   def void_last_transaction
#     @total = @total - @last_transaction
#     @total
#   end

# end
