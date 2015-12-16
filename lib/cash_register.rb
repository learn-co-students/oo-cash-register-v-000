class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(employee_discount=0)
    @total = 0
    @items = []
    @discount = employee_discount
    @last_transaction = {}
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times {@items << item}
    @last_transaction[:last_item] = item
    @last_transaction[:last_price] = price
    @last_transaction[:last_quantity] = quantity
  end

  def apply_discount
    if @discount > 0
      @total *= (100 - @discount) / 100.0  #forcing floating point division by making 100.0
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[:last_price] *  @last_transaction[:last_quantity]
  end

end