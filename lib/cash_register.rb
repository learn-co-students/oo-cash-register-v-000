class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = 0, items = [])
    @total = 0
    @discount = discount
    @items = items
  end

  def track_items(title)
    @items << title
  end

  def add_item(title, price, quantity = 1)
    price = quantity * price
    self.total += price
    quantity.times do
      self.track_items(title)
    end
    @last_price = price
  end

  def items
    @items
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (@total * @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end

end
