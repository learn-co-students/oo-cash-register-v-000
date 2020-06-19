# first attempt 6/23/17
# require 'pry'
# class CashRegister
#   attr_accessor :total, :discount, :items, :last_transaction_amount
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(title,price,quantity=1)
#     self.total += price*quantity
#     #use #times here to loop the required number of times
#     quantity.times do
#       self.items << title
#     end
#     self.last_transaction_amount = price*quantity
#   end
#
#   def apply_discount
#     result = "There is no discount to apply."
#     if self.discount != 0
#       #why is it okay to drop "self" here?
#         #is it because you're in an instance method?
#       self.total -= (self.total * (self.discount/100.0)).to_i
#       result = "After the discount, the total comes to $#{total}."
#     end
#     result
#   end
#
#   def void_last_transaction
#     self.total -= self.last_transaction_amount
#     #how would you remove the items from the last transaction from the items array?
#       #would you need to store each element of #add_item into variables?
#   end
#
# end

# second attempt 7/4/17
class CashRegister
  attr_accessor :total, :items, :last_transaction
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    self.last_transaction = price*quantity
    quantity.times {self.items.push(title)}
  end

  def apply_discount
    if self.discount != 0
      self.total -= (self.total * (self.discount/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
