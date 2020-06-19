require 'pry'

class CashRegister

  attr_accessor :item, :total, :discount, :last_item_price

  def initialize(discount = 0)
    #takes in starting total, starting discount, and new item
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(item, price, quantity = 1)

    quantity.times do
      @item << item
    end
    #Takes in item, checks how many there are (quantity)
    @last_item_price = price * quantity
    #keep track by adding
    @total =+ @total + @last_item_price

    #price * quantity #or @total?
  end

  def apply_discount
    if @discount != 0
        discount_total = @total * @discount/100
        @total = @total-discount_total
       "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
  end

  def items
    @item  #returns an array of all the items,
  end

  def void_last_transaction
    #takes current total and subtracts the last item from the total
    @total = @total-@last_item_price
  end

end
