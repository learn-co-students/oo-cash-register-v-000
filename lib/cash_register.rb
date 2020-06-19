class CashRegister
  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times{@items << title}
    @total += price * quantity
    @last_trans = {title: title, price: price, quantity: quantity}
  end
  "After the discount, the total comes to $800."
  def apply_discount
    if @discount == 0
       "There is no discount to apply."
    else
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    end
  end
 def items
   @items
  end

  def void_last_transaction
    @total -= @last_trans[:price] * @last_trans[:quantity]

  end
  
end
