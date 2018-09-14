class CashRegister
  attr_accessor :total, :discount
  @@items = []
  @@prices = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items.clear
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @@items.concat([title]*quantity)
    @@prices << price
  end

  def apply_discount
    @total = @total * (100 - @discount)/100
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = @total - @@prices.pop
  end
end
