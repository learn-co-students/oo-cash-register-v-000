
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(the_discount = nil)
    @items = []
    @discount = the_discount
    @total = 0

  end

  def add_item(item, cost, quantity=1)
    @total = @total + (cost * quantity)
    quantity.times do
      @items << item

    end
    end


  def apply_discount
    if @discount
      @total = @total - (@total * (@discount/100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."

    else
      "There is no discount to apply."
    end
  end

def void_last_transaction
  @total = @total - @total


end

end
