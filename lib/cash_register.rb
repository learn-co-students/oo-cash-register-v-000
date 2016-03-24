require 'pry'


class CashRegister
  attr_accessor :total, :count, :discount
 

  def initialize(discount = 0)
    @total = 0
    @count = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, count = 1)
    count.times {|x| @items << item}
    if count == 0 
    @total += price
    else 
    @total += price * count
    end
    @price = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_as_percent = @discount.to_f / 100
      discount_amount = discount_as_percent * @total
      @total = @total - discount_amount
      @total = @total.round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items 
    @items
  end

  def void_last_transaction
    @total = @total - @price
    @total
  end



end