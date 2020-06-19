class CashRegister 
  attr_accessor :cash_register, :total, :discount, :items, :last_transaction
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction = []
  end
  
  def add_item(item, amount, quantity = 1)
      @total += amount * quantity
      item_array = 
      quantity.times {@items << item}
      @last_transaction = [item, amount, quantity]
  end  
    
  def apply_discount
      if @discount != nil
      @total *= ((100.0 - discount.to_f)/100.0)
      "After the discount, the total comes to $#{total.to_i}."
      else "There is no discount to apply."
      end   
  end
  
  def void_last_transaction
    item = last_transaction[0]
    amount = last_transaction[1]
    quantity = last_transaction[2]
    if @discount != nil
    @total -= amount * quantity 
    else @total -= amount*quantity * ((100.0 - discount.to_f)/100.0)
    end
    quantity.times {@items.pop()}
  end
  
end 