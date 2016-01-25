class CashRegister
  attr_accessor :total, :items, :last_transaction

  def initialize(employee_discount = 0)
    @total = 0
    @items = []
    @employee_discount = employee_discount.to_f
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times { @items << title }
    @last_transaction = price * quantity
  end

  def apply_discount
    return 'There is no discount to apply.'  if @employee_discount == 0
    @total -= (@total * @employee_discount / 100)
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
