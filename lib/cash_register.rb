class CashRegister
  attr_accessor :total, :prices, :discount, :items

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @prices = []
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity

    @prices << price

    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-@discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @prices.pop
  end

end
