class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@items << title}
    @last_item = title
    @last_price = price
    @last_quantity = quantity
  end

  def apply_discount
    if @discount != nil
      @total = (@total * (1 - (@discount / 100.0))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@last_price * @last_quantity)
    @items.delete(@last_item)
  end
end
