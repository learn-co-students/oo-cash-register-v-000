require "pry"


class CashRegister
  attr_accessor :total
  attr_reader :items

  def initialize(employee_discount=0)
    @employee_discount = employee_discount
    @total = 0
    @items = []
    @trans_price = []
  end

  def discount
    @employee_discount = 20
  end

  def add_item(item, price, quant=1)
      @trans_price << price * quant
      @total += price * quant
      quant.times {@items << item}
  end

  def apply_discount
    if @employee_discount == 0
      "There is no discount to apply."
    else
    @total -= (@total * @employee_discount/100)
    "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @trans_price[-1]
  end

end
