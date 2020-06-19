class CashRegister

  attr_accessor :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @list = []
    @last_transaction = []
  end

  def add_item(name, value, quantity = 1)
    self.total += value * quantity
    quantity.times {@list << name}
    @last_transaction = [name, value, quantity]
  end

  def last_transaction
    @last_transaction[1] * @last_transaction[2]
  end


  def apply_discount
    return "There is no discount to apply." if @discount == 0
    self.total -= @discount
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @list
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end






end

