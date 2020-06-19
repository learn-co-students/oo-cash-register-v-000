class CashRegister
  attr_accessor :discount
  attr_accessor :total
  attr_accessor :items
  attr_accessor :last_price

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @last_price = price
    quantity.times do
      @items << name
      @total += price
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_total = @total - (@total*@discount*0.01)
      @total = discount_total.round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
  end
end
