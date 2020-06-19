require "pry"
class CashRegister
  attr_accessor :discount, :total, :title, :price, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  # def items=
  #   @items = []
  # end

  def add_item(title, price, quantity = 1)

    @title = title
    quantity.times do
      @items << @title
    end
    @last_transaction = price * quantity
    @total += @last_transaction
  end

  def apply_discount
    @total -= @total * (@discount / 100.0)
    if @discount == 0
      "There is no discount to apply."
    else
       "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= last_transaction
  end

end
