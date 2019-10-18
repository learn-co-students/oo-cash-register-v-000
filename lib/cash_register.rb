require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times do @items << title end
    @total += (price * quantity)
    @transactions << (price * quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    elsif
      percent = (100 - discount.to_f)/100
      @total *= percent
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transactions[-1]
  end

end
