require 'pry'

class CashRegister
  attr_accessor :total, :transaction_amount

  def initialize(employee_discount=0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @transaction_amount = 0
  end

  def discount
    20
  end

  def total
    @total
  end

  def items
    @items
  end

  def transaction_amount
    @transaction_amount
  end

  def add_item(item, price, quantity=1)
    self.transaction_amount = price*quantity
    self.total += self.transaction_amount
    while quantity >= 1 do
      self.items << item
      quantity -= 1
    end
  end

  def apply_discount
    self.total = (self.total - self.total*discount.fdiv(100)).floor
    # the cash register was initialized with an employee discount
    if self.total == (self.total - self.total*discount.fdiv(100)).floor
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  # subtracts the last transaction from the total
  def void_last_transaction
    self.total = self.total - self.transaction_amount
  end

end
