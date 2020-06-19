# CashRegister
#   ::new
#     sets an instance variable @total on initialization to zero
#     optionally takes an employee discount on initialization
#   #total
#     returns the current total
#   #add_item
#     accepts a title and a price and increases the total
#     also accepts an optional quantity
#     doesn't forget about the previous total
#   #apply_discount
#     the cash register was initialized with an employee discount
#       applies the discount to the total price
#       returns success message with updated total
#       reduces the total
#     the cash register was not initialized with an employee discount
#       returns a string error message that there is no discount to apply
#       #items
#     returns an array containing all items that have been added
#   #void_last_transaction
#     subtracts the last transaction from the total


class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @item_array = []
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def discount
    @discount
  end

  def item_array
    @item_array
  end

  def add_item(title, price, quantity=1)
    if quantity > 1
      @item_array.fill(title, @item_array.size, quantity) ###---> array.fill
    else
      @item_array << title
    end
    self.last_transaction = price*quantity
    @total = @total + price*quantity
    @total
  end

  def apply_discount
    if @discount <= 0
      return "There is no discount to apply."
    end
    @total = @total - @discount*10
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @item_array
  end

  def void_last_transaction
    #last_transaction =
    @total = @total - self.last_transaction
    @total
  end
#
#
#final end below
end
