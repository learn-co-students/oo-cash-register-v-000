class CashRegister
  attr_accessor :total, :discount
  attr_reader :items, :prices

  def initialize(discount= nil)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title,price,quantity=1)
    @total +=price*quantity
    for i in 1..quantity
      @items << title
      @prices << price
    end
  end

  def apply_discount
    if not @discount
      return "There is no discount to apply."
    else
      @total = @total* (1.0-discount/100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= prices[-1]
    @prices.pop
    @total
  end

end
