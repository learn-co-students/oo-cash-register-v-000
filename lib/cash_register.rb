require "pry"
class CashRegister
  attr_accessor :total, :discount, :all_items, :transaction
    
  def initialize (discount=0)
    @total = 0
    @discount = discount
    @all_items = []
    @transaction = 0
  end
  
  def add_item(title, price, quantity=1)
    quantity.times {@all_items << title}
    @transaction = price * quantity
    @total += @transaction
  end
  
  def apply_discount
    if discount != 0 
      @total = @total.to_f - (@total.to_f * (discount.to_f/100.to_f)).to_f
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @all_items
  end
  
  def void_last_transaction
    @total -= @transaction
  end
end
