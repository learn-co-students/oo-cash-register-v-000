class CashRegister
  attr_reader :items, :discount
  attr_accessor :total

  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
    @items = []
    @transaction = 0
  end

  def add_item(item, price, quantity = 1)
    @transaction = price * quantity
    @total += @transaction
    quantity.times do 
      @items << item
    end
  end
  
  def apply_discount
    if @discount
      @total -= @total * discount / 100 
      return "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transaction
  end
end
