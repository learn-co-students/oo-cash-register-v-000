require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, item_price, quantity=1)
    @last_transaction = @total #doesn't forget about previous total
    quantity.times {@items << title} #keeps track of  quantity and pushes title in items array
    @total += item_price * quantity
  end

  def apply_discount #apply discount to total price if there is a discount output success message if not output another message
     if @discount > 0 #if there's a discount return message
       @total -= (@total * (@discount / 100.0)).to_i #ex. 10000 - (1000 * (20/100.0))
       "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
   end

  def items
    @items
  end

  def void_last_transaction
    @total =  @last_transaction
  end



end
