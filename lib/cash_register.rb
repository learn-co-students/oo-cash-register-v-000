class CashRegister
  attr_accessor :discount, :total, :items, :last
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item_name, price,quantity=nil)
    if quantity == nil
      @total += price
      items << item_name
      @last = price
    else 
      @total += (price * quantity)
      quantity.times do
        items << item_name
      end
      @last = (price * quantity)
    end
  end
  
  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      perc = @discount/100.0
      savings = perc * @total
      @total -= savings
      @total = @total.round
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @total -= @last
  end
  
end
