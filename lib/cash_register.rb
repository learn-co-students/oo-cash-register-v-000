

class CashRegister
  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    @total
  end


  def add_item(title, price, quantity = 1)
    @last_total = @total
    quantity.times do
      @items<<title
    end
    @total += (price*quantity)
  end


  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      disc_percent = @discount/100.0
      discount_on_total = @total * disc_percent
      @total -= discount_on_total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end


  def items
    @items
  end


  def void_last_transaction
    @total = @last_total
  end

end
