
class CashRegister
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :items, :last_transaction

  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = [item, price, quantity]
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * ((100 - @discount)) / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction[1]
  end
end
