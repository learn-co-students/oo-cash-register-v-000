class CashRegister

  attr_accessor :total, :discount, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@items << title}
    quantity.times {@price << price}
      @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      self.total = (@total * (100 - @discount.to_f) / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price.pop
  end

end
