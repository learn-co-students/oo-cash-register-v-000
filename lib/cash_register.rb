class CashRegister
  
  attr_accessor :total, :discount, :quantity, :items, :last_item
  def initialize(e_discount = 0)
    @total = 0
    @discount = e_discount
    @items = []
    @last_item = []
  end
  
  def add_item(title, price, qty = 1)
    @total += price * qty
    @quantity = qty
    @last_item << price
    count = 0
    while count < qty
      @items << title
      count += 1
    end
  end
  
  def apply_discount
    percent = @discount.to_f/100
    total_discount = @total * percent
    @total -= total_discount
    if @discount > 0
      succes_message = "After the discount, the total comes to $#{@total.to_i}."
    else @discount = 0
      succes_message = "There is no discount to apply."
    end
    succes_message
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_item.pop
  end 
end
