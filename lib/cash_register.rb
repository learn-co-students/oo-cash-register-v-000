class CashRegister
  
attr_accessor :total, :quantity, :cash_register_with_discount, :title, :price, :cash_register, :receipt_number, :items, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  def self.total 
    @total
  end
  
  def self.items
    @items
  end 
  
  def add_item(title, price, quantity = 1)
    @items += [title] * quantity
    subtotal = price * quantity
    @total += subtotal
  end 
  
  
  def apply_discount
    if @discount <= 0 
      return "There is no discount to apply."
    else 
      @total = @total - @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    end
    
  end 
  
  def void_last_transaction
    @total = 0
  end 
  
end 
