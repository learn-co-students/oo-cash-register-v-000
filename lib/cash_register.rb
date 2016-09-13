
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :items_array

  def initialize(discount = 0)
    @items_array = []
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @items_array << [Array.new(quantity, title), price].flatten
    @total += (price * quantity)
  end

  def apply_discount
    if @discount > 0
      disc = (100 - @discount).to_f/100
      @total *= disc
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_array.flatten.find_all{|element| element.is_a?(String)}
  end

  def void_last_transaction
    @total -= @items_array[-1][-1]
  end

end
