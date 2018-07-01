

class CashRegister


attr_accessor :total, :items, :discount, :last_transaction

# when .new is called, the initialize method with be called and an instance variable
#   total will be created; items with an empty array to store the items purchase ;
#   a varibale called discount which will equal to discount passed in, if nothing is passed in discount then discount will be default to 0
def initialize(discount = 0)
@total = 0
@items = []
@discount = discount
end
#
# the add_item method takes in 3 args, an item, price and quantity
# total equals to price times quantity
# item will then be pushed into the items variables
# calling the class using self, last_transaction equals to price times quantity
def add_item(item, price, quantity = 1)
  @total += price * quantity
  quantity.times do
  @items << item
end
self.last_transaction = price * quantity
end


apply_discount method will check if a discount needs to be applied
# if discount does not (!=) equal to 0 then
#   total equals to 100 - discount to a floating number (2.1 etc..) divided by 100 times 100.0 and then change to Integer
#   which puts out   "After the discount, the total comes to $#{@total}."
#   if discount equals to 0 then method puts out   "There is no discount to apply."

def apply_discount
  if discount != 0
      @total = (total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
  end
end

# the void_last_transaction method called the total variable which would equal to
# total - last_transaction

def void_last_transaction
  self.total = self.total - self.last_transaction
end





end
