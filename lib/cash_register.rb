class CashRegister
  attr_accessor :discount, :total, :last_trasnsaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    
  end
  
  def add_item(name, price, quantity = 1)
    item_info = {}
    item_info[:name] = name
    item_info[:price] = price
    item_info[:quantity] = quantity
    
    @cart << item_info
    
    @total += price * quantity
    @last_trasnsaction = @total
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else 
      @total *= 0.8
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
   def items
    item_names = []
    @cart.each do | item_info |
      for qty in 1..item_info[:quantity] 
        item_names << item_info[:name]
      end 
    end 
    item_names
  end 
  
  def void_last_transaction
    @total -= @last_trasnsaction
  end
end