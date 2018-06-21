class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity
    
    @cart << item_info
    
    @total = price * quantity
  end
  
  def apply_discount
    if @discount = 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
  
  def cash_register_with_discount
    
  end
  
  def items
    item_names = []

  end
  
  def total
    @total = @total * @discount / 100
  end
  
  def void_last_transaction
    
  end
  
end
