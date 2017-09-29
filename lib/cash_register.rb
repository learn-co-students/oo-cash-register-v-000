class CashRegister

  attr_accessor :total, :discount, :items, :price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = []

  end


  def add_item(item, price, quantity = 1)
    if quantity == 0
      @total += price
    else
      @total += price * quantity
    end
    quantity.times {@items << item}
    @price << price
  end

  def apply_discount
    if @discount != 0
      employee_discount = discount.to_f / 100
      @total = @total - (@total * employee_discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price[-1]
  end
end
