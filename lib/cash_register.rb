require 'pry'

class CashRegister
  attr_accessor :discount, :total, :item_title, :item_price, :item_quantity

  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item_title, item_price, item_quantity = nil)
    @old_total = @total
    #accept title and a price, and increase the total.
    if item_quantity != nil
      item_total = item_price * item_quantity
      @total += item_total
      i = 1
      while i <= item_quantity do
        i += 1
        @items << item_title
      end
    else
      @items << item_title
      @total += item_price
    end
    #also accept an optional quantity
    #keep track of the previous total.
  end

  def apply_discount
    #apply the discount to the total price
    if @discount != nil
      discount_decimal = @discount / 100.0
      discount_amount = @total * discount_decimal
      @total = @total - discount_amount  #reduce the total
      @total = @total.round
      # binding.pry
      return "After the discount, the total comes to $#{@total}."  #return success message with the updated total
    else
      return "There is no discount to apply."
    end
  end

  def items
    #returns an array containing all items that have been added
    @items
  end

  def void_last_transaction
    #subtracts the last transaction from the total.
    @total = @old_total
  end


end
