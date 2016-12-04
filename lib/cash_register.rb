require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price, :items, :last_transaction

  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    # @items.fill(title, items.size, quantity)
    quantity.times{@items << title}
    quantity == 1 ? @total += price : @total += price * quantity
    @last_transaction = price * quantity
  end

  def apply_discount
    percent_off = nil
    if discount == 0 || nil
      return "There is no discount to apply."
    else
      percent_off = (@total * @discount)/100
      @total = @total - percent_off
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
