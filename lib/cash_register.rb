require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price,
  @@items = []

  def initialize(discount=0)
    @solution = []
    solution << title
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=0)
    quantity == 0 ? @total += price : @total += price * quantity
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

  def items
    solution
  end

end
