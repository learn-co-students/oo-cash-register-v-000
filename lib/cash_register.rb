
class CashRegister
  
  attr_accessor :items, :total, :discount, :price, :item_name, :quantity
  
  def initialize(discount=0.0)
    @items = []
    @total = 0.0
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    @item_name = name
    @price = price
    @quantity = quantity
    @total += @price.to_f * (@quantity.to_f)
    @items.concat [item_name] * @quantity
  end
    
  def items
    @items
  end
   
  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      @total *= 1.0 - (@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    voidme = @price
    @total -= voidme
    @items.pop()
  end
  
end
