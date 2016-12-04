require 'pry'

class CashRegister
  attr_accessor :discount, :total, :price, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @last_transaction = quantity > 1 ? @total += price * quantity : @total += price
    quantity.times { @items << item }

  end

  def apply_discount
    if discount == 20
      @total -= discount * 10
      return "After the discount, the total comes to $#{@total}."
    else false
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
