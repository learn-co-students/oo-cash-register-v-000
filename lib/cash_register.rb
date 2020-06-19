require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    #if there are multiple quantities for item
    @items << item.split * quantity
    @last_transaction = @total
  end

  def apply_discount
    if @discount == nil
      discount_error = "There is no discount to apply." 
    else
      @total = @total - ((@discount / 100.to_f) * @total)
      discount_message = "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end