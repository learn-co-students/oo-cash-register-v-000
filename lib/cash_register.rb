class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(employee_discount = 0)
    @total = 0
    @items = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @items.fill(title, @items.size, quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total-@total*discount/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = 0
  end

end
