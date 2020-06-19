class CashRegister
  attr_accessor :total, :discount, :items, :last_item, :last_price

  def initialize(discount = 0.0)
    @discount = discount
    @items = []
    @total = 0.0
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @total += price * quantity
    @last_item = title
    @last_price = price * quantity
  end

  def apply_discount
    if @discount <= 0.0
      "There is no discount to apply."
    else
      @total -= (@discount / 100.0 * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end
end
