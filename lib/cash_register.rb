
# require 'pry'
class CashRegister


attr_accessor :total, :discount, :item_array, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
    @last_transaction = 0
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity).to_f
    ([item] * quantity).each {|i| @item_array << i}
    @last_transaction = price * quantity
    end

  def apply_discount
      if @discount != 0
        @total -= @discount.to_f / 100.0 * @total.to_f
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
