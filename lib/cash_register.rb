class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(employee_discount = 0)
    @discount = employee_discount
    @total = 0 #set to 0 on init
    @items = []
    @last_transaction = []
  end

#   def total
#     @total
#   end

  def add_item(title, price, quantity = 1)
    @last_transaction = (quantity * price)
    @total += (quantity * price)
    quantity.times {@items << title}
    @last = @total
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= (@total*(@discount/100.0)).round
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
