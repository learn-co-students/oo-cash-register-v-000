#create new class CashRegister

class CashRegister

  #create getter and setters for each related methods
  attr_accessor :total, :discount, :price, :quantity, :void_last

  #initialize with optional discount and set to 0
  #instance variable items with an empty array when there is nothing in cart
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  #add_item Method to take 3 arguments
  def add_item(title,price,quantity = 1)
      #receives new total after getting price and quanitity
      new_total = self.total += (price*quantity)
      #add items to empty item array
      quantity.times do
        @items << title
      end
      #instance variable set to price of item
      @void_last = price
  end

  #apply_discount method
  def apply_discount
    #use if/else to determine outcome if there is no discount versus outcome if there is discount
    if discount !=0
      @total = @total - @total * discount/100
       "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."
    end
  end
  #returns list of items in array
  def items
    @items
  end

  #method that takes total from CashRegister and subtracts price of last item
  def void_last_transaction
    self.total -= @void_last
  end
end
