class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
        @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end

# OPTION 2

# class CashRegister
#   attr_accessor :total, :discount, :price, :items
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item (item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end
#
#   def apply_discount
#     if @discount > 0
#       applied_Discount = (price * discount)/100
#       @total -= applied_Discount
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     @total -= @price
#   end
#
# end
