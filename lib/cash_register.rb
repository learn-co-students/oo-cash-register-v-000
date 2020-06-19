
class CashRegister 
  attr_accessor :total, :last_transaction, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total_items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @total
    @last_transaction = price * quantity
    quantity.times {@total_items << title}
  end 
  
  def apply_discount 
    new_total = @total - (@total * (@discount.to_f / 100)).to_i
    if @discount == 0
      "There is no discount to apply."
    else 
      @total = new_total
      "After the discount, the total comes to $#{new_total}."
    end 
  end 
  
  def items 
    @total_items 
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
  
end 