class CashRegister

attr_accessor :total, :discount, :quantity  
  def initialize(discount=0)
    @total = 0
    @item = []
    @discount = discount  
  end 
  def add_item(title, price, quantity=1)
    @title = title
    @price = price 
    quantity.times do |x| 
        @item << title
    end  
    @total += quantity*price
  end
  def apply_discount
      if @discount == 0
        "There is no discount to apply."
      else 
        @total = @total - (@total * (@discount.to_f / 100))
        "After the discount, the total comes to $#{@total.round}."  
      end 
  end
  def items
    @item
  end
  def void_last_transaction
    @total = @total - @price 
  end  
end 


