require "pry"
class CashRegister
  attr_accessor :discount, :total


  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @item_prices = []
  end

  def add_item(title, price, quantity = 1)
    counter = 0
    while counter < quantity
      @items << title
      @item_prices << price
      counter += 1
    end
    #------------ these are handling different ideas.. top handles item lists bottom tracks price
    if quantity == 1
      @total += price
    else
      @total += quantity * price
    end
  end

  def apply_discount
    if @discount
       savings = @total*@discount/100
       @total = @total - savings
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total = @total - @item_prices[-1]
  end

end
#j=CashRegister.new(20)
#j.add_item("macbook", 1000)
#j.apply_discount
#  def self.cash_register_with_discount(emplyee_discount: '...')
#    CashRegister.new
#    @employee_discount = employee_discount
#  end
