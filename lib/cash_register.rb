class CashRegister
  attr_accessor :total, :discount, :price, :all_items
 
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @all_items = []
  end
   
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    counter = 0
    if quantity > 1 
     while counter < quantity
      @all_items << item
      counter += 1
    end
    else
      @all_items << item
    end
  end

  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end  
  end

  def void_last_transaction
    @total -= @price
  end

    def items
      @all_items
  end
end



