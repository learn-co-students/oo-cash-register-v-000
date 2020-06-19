class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    for i in 1..quantity do
      @items << title
    end
    @last_item_price = price
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_item_price
  end

end
