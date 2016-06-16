#require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @item = item
    #binding.pry
    quantity.times do
      @items << item
    end
    @total += price * quantity
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount
      @total = @total - (@total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
