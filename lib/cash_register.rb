require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item = []
    @last_transaction = nil
  end

  def add_item(item, price, quantity = 1)
    self.total += price*quantity
    quantity.times do
      self.item << item
    end
  end

  def apply_discount
    @total *= (1-((@discount.to_f)/100))
    if @discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.item
  end

  def void_last_transaction
    @item.delete_at(0) && @total=0
  end

end
