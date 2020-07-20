require 'pry'

class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(employee_discount=nil)
      @total = 0
      @discount = employee_discount
      @items = []
  end

  def add_item(title, price, quantity=1)
      self.total += price * quantity
      quantity.times do
        @items << title
      end
      self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount
      self.total -= (@total * @discount/100.to_f).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @last_transaction
  end
end
