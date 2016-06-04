require "pry"

class CashRegister

attr_accessor :total, :emp_discount, :items, :last_price

@items

  def initialize(emp_discount = 0)
    @total = 0
    @items = []
    @emp_discount = emp_discount
  end

  def discount
    @emp_discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@items << title}
    @last_price = price
  end

  def apply_discount
    if self.discount !=0
      @total -= (@total * self.discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end
end
