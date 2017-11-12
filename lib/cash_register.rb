class CashRegister
  attr_accessor :total
  attr_reader :discount, :items, :last_quantity, :last_price

  def initialize(discount=nil)
    @total = 0
    @items = []
    @last_quantity = 0
    @last_price = 0
    @discount = discount
  end

  def add_item(name, price, quantity=1)
    quantity.times do
      @items << name
      @total += price
    end
    @last_quantity = quantity
    @last_price = price
  end

  def apply_discount
    message = ""

    if @discount
      @total -= @total * (@discount / 100.0)
      message = "After the discount, the total comes to $#{@total.floor}."
    else
      message = "There is no discount to apply."
    end

    message
  end

  def items
    @items
  end

  def void_last_transaction
    @last_quantity.times do
      @items.pop
      @total -= @last_price
    end
    @last_quantity = 0
    @last_price = 0
  end
end
