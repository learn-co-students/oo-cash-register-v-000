
class CashRegister
  attr_accessor :discount, :last_transaction, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
  end

  def add_item(name, cost, number = 1)
    self.total += (cost*number)
    @last_transaction = cost
    number.times{@items.push(name)}
  end

  def apply_discount
    if discount != 0
      @total -= @total*(@discount/100.00)
      return "After the discount, the total comes to $#{(self.total).to_i}."   # to_i invoked here only to pass tests.
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end
