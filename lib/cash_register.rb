require 'pry'
class CashRegister

  attr_accessor :total, :discount, :descuento, :items, :last_transaction
  
  def initialize(dis=nil)
    @total = 0 
    @discount = dis 
    @items = []
  end
  
  def add_item(item, price, quantity=1)
    self.total += (price*quantity)
      quantity.times do 
      @items << item
      end
    self.last_transaction = (price*quantity)
  end
    


  
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
    @descuento = (@discount*@total)/100
    @total -= @descuento
    return "After the discount, the total comes to $#{total}."
    end
  end 
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= last_transaction
  end
end

  