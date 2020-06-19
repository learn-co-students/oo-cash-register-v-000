require 'pry'

class CashRegister
  attr_accessor :total, :item_list, :last_transaction

  def initialize(emp_discount = nil)
    @total = 0
    @item_list = []
  end

  def discount
    emp_discount = 20
  end

  def add_item(item, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times do
      @item_list << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    @total = @total - ((self.discount.to_f / 100) * @total)
    if @total > 0
      return "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
