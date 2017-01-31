class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  ARRAY = []

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items =[]
    @last_transaction = 0
  end


  def add_item(title, price, quantity=1)
    @quantity = quantity
    @title = title
    @total+=price*quantity
    x = 0
    while x < quantity
      @items << @title
      x+=1
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total-=@total * (@discount * 0.01)
      return "After the discount, the total comes to $#{@total.floor}."
    else
      return "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total-= @last_transaction

  end
end
