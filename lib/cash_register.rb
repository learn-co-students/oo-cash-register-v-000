class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @price = price
    @quantity = quantity
    @quantity.times do 
    @items << item
    end
  end
  
  def apply_discount
    if discount != 0 
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
    @total -= @price * @quantity
  end
  
end