require 'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :title, :price, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items_arr = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times { @@items_arr << title }
    @last_transaction = price * quantity
  end


  def apply_discount
    if @discount != 0
      amount_off = @discount.to_f/100 * @total.to_f
      new_total = @total - amount_off
      @total = new_total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items_arr
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end

  # def total
  #   @total
  # end DON'T NEED THIS BECAUSE ALREADY HAVE READER ABOVE IN ATTR ACCESSOR
