class CashRegister
  attr_accessor :total, :discount, :items, :last_price, :last_quantity #,:last_title
  
  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @total+=price*quantity
    quantity.times do 
      @items.push(title)
    end
    #Assign these values for the function called void_last_transaction
    #@last_title = title #this one isn't really needed
    @last_price = price
    @last_quantity = quantity
  end
  
  def apply_discount
    @total = @total - (@total*@discount/100)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{total}."
    end
    #discount_message = "There is no discount to apply." if @discount == 0
    #discount_message = "After the discount, the total comes to $#{@total}." if @discount > 0
  end
  
  def void_last_transaction
    @total-= @last_price*@last_quantity
    @last_quantity.times do
      @items.pop
    end
  end
end
