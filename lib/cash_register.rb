require 'pry'
class CashRegister

  attr_accessor :total, :discount, :discounted_total, :prev_total, :final_total, :items

  def initialize(discount=0)
    @discount = discount
    @total = total || 0
    @@prices = []
    @@items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {@@items << item}
    @@prices << price
  end

  def apply_discount
    @total = total - (total * discount / 100)
    return "After the discount, the total comes to $#{@total}." if discount >= 1
    return "There is no discount to apply." if discount <= 0
  end

  def items
    @@items
  end

  def void_last_transaction
     @total = @total - @@prices[-1]
  end


end #class
