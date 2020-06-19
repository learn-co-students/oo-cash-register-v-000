
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
    @items << item
    end
  @last_transaction = price * quantity
  end
  
  
  def apply_discount
    @total -= @total * @discount.to_f/100
    if @discount == 0
      "There is no discount to apply."
    else
    "After the discount, the total comes to $#{@total.to_i}."
  end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end 