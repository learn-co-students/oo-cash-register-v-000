
class CashRegister
  attr_accessor :total, :discount, :price, :qty


  def initialize(total = 0, discount = 0)
   @total = total

   @discount = discount
 end

 def total
   @total
 end

 def add_item(item, price, qty = 1)
   @price = price
   @qty = qty
   @total += @price * @qty
 end

 def apply_discount
   discount = (@discount.to_f/100)
   total_discount = (@total.to_f * discount)
   @total = @total.to_f - total_discount
  #  puts "After the discount, the total comes to #{@total}."
 end

end
