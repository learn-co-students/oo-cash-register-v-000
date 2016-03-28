
class CashRegister

  attr_accessor :total, :employee_discount, :items_hash, :last_transaction

  def initialize(employee_discount = 0.0)
    @total = 0.0
    @employee_discount = employee_discount
    @items_hash = {}
  end

  # Need this because spec calls #discount and I labeled it #employee_discount
  def discount
    @employee_discount
  end

  def add_item( item, price, quantity = 1 )
    if self.items_hash[item]
      self.items_hash[item] += quantity
    else
      self.items_hash[item] = quantity
    end
    self.total += price * quantity
    self.last_transaction = [item, price, quantity]
  end

  def apply_discount
    error_message = "There is no discount to apply."
    return error_message if self.employee_discount == 0
    @total = @total * (1 - (self.employee_discount)/100.0)
    "After the discount, the total comes to $#{self.total.round}."
  end

  def items
    items = []
    self.items_hash.each do |item, quantity|
      quantity.times { items << item }
    end
    items
  end

  # @last_transaction is a 3 element array of form [item, price, quantity]
  def void_last_transaction
    # Subtract the last transaction price times quantity
    self.total -= self.last_transaction[1] * self.last_transaction[2]
  end

end
