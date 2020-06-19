class CashRegister

  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :title, :price, :quantity, :item, :items

  def initialize(discount = 0)
    @total = total
    @total = 0
    @discount = discount
    
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @total += price * quantity
    @items ||= []
    @items << @item
  
  end

  def apply_discount
    if @discount == 0
     return "There is no discount to apply."
    else
      @total -= (@price*0.2)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items << @item
    @items << @item
  end

  def void_last_transaction
    @total -= @price
  end

end
