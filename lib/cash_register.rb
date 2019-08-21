
class CashRegister

  attr_accessor :total, :employee_discount, :items, :last_transaction

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end

  def total
    @total
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @total += (quantity * price.to_f)
    self.last_transaction = quantity * price
  end

  def apply_discount
    if @employee_discount != 0
      self.total = (((100.0 - @employee_discount.to_f)/100.0) * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
