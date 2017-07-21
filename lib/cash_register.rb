require 'pry'
class CashRegister
  attr_accessor :items_list, :total, :discount, :last

  def initialize(discount=0)
    @total = 0
    @last = { }
    @items_list = Array.new
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, count=1)
    @total += (price * count)
    count.times do @items_list << item end
    @last = { } # clear last item
    @last[item] = price  # set new last item with price
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      discount_amt = @total * (discount/100.0)
      @total = @total - discount_amt
      @total = Integer( String(@total).split('.')[0] )
      "After the discount, the total comes to $#{@total}."
    #end if
    end
    #end apply_discount
  end
  def items
    @items_list
  end
  def void_last_transaction
    @total = @total - @last[ @last.keys[0] ]
    @items_list.pop()
  end
end
