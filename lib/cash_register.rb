require "pry"
class CashRegister

attr_reader :discount, :items
attr_accessor :total, :title
attr_writer :apply_discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
  @total = @total + (price*quantity)
   end

  def apply_discount
    if discount != 0
      @discount = @discount.to_f/100 * @total
      @total = @total - @discount
        "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

def items
  add_item
  # binding.pry
end

end
