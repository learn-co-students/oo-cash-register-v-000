class CashRegister

  attr_accessor :discount, :total
 
   def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @added_items = []
   end

   def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times do 
       @items << item
       @added_items << price
     end
   end

  def apply_discount
    
    if @discount > 0
      @total -= @total * @discount/100 
      "After the discount, the total comes to $#{@total}."

     else
      "There is no discount to apply."
    end
  end

  def items
    @items 
    
  end

  def void_last_transaction
    @total -= @added_items[-1]
  end

end
