require 'pry'
class CashRegister
  attr_accessor :total
  attr_reader :items, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(item, cost, quantity = 1)
    @items.fill(item, @items.size, quantity)
    @total = @total + (cost * quantity)
    @last = cost * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@discount * @total / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  # def items method that attr_reader is creating
  #   @items
  # end


  def void_last_transaction
    #binding.pry
    @total = @total - @last
  end

end
