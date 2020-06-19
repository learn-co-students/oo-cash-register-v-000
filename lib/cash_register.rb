# Build the CashRegister class 
class CashRegister 
  attr_accessor :total, :last_charge, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total 
    @total 
  end
  
  def add_item(title, price, quantity = 1) 
    @total += price * quantity
    quantity.times do
        @items << title
    end
    @last_charge = price * quantity
  end 
  
  def items
    @items 
  end 
  
  def apply_discount 
    if @discount == 20
      discount_amount = (@total * @discount)/100.00
      @total = @total - discount_amount
      return "After the discount, the total comes to $#{@total.to_i}."
    elsif @discount == 0 
      discount_amount = 0
      @total = @total - discount_amount
      return "There is no discount to apply."
    else
      return "Discount unknown."
    end
  end 

  def void_last_transaction 
    @total -=  @last_charge
  end 
end