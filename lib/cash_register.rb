class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  def initialize(employee_discount=nil)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    total = @price.to_f*@quantity.to_f
    total = total.to_f
    @total += total.to_f
    @quantity.times do
      @items << @title
    end
  end

  def items
    @items
  end

  def apply_discount
    if @discount != nil
      discount = (100 - @discount)/100.00
      @total = @total*discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
