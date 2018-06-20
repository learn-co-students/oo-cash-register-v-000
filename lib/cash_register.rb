class CashRegister
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @total = 0 
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += quantity * price
    quantity.times do 
      @items << title
    end
  end
  
  def apply_discount 
    if @discount == 0 
      "There is no discount to apply."
    else 
      discounted = 100 - @discount 
      @total = discounted.to_f / 100 * @total
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total = 0 
  end
  
end
