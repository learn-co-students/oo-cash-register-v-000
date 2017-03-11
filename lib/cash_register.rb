require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    new_total = price * quantity
    self.total += new_total

    quantity.times {|i| self.items << item }
    self.last_item_price = price
  end

  def apply_discount
    total_discount = @total * (@discount.to_f / 100)
    self.total = @total - total_discount.to_i

    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_item_price
  end

end
