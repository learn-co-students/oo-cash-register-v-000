class CashRegister
  attr_accessor :discount, :total
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += (price*quantity)
    quantity.times do @@items << title
    end
    @last_item = (price*quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total * ((100-@discount)/100.00)).round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items.drop(11)
  end

  def void_last_transaction
  	@total = @total - @last_item
  end

end
