require 'pry'
class CashRegister

  attr_accessor :total, :discount
  @transactions
  @items

  def initialize(discount=0)
    @discount = discount
    @transactions = []
    @items = []
    @total = 0
  end


  def add_item(item, price, quantity=1)
    pre_total = @total
    quantity.times{@items.push(item)}
    @total += price*quantity
    @transactions.push(@total - pre_total)
  end

  def items
    return @items
  end

  def apply_discount
    if (@discount==0)
      return "There is no discount to apply."
    end
    @total = @total - (@total*(@discount.to_f/100)).to_i
    return "After the discount, the total comes to $" + @total.to_s + "."
  end

  def void_last_transaction
    return @total -= @transactions.pop()
  end
end
