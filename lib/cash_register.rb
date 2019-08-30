class CashRegister
  attr_accessor :total, :cart
  attr_reader :discount

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @cart << title
    end
    @last_trans = {quantity: quantity, price: price}
    @total += price*quantity
  end

  def apply_discount
    if @discount != 0
      @total -= (@total * @discount * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @cart.pop(@last_trans[:quantity])
    @total -= @last_trans[:quantity] * @last_trans[:price]
  end

end
