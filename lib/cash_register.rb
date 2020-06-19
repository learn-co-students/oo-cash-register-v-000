class CashRegister

  attr_accessor :items, :total, :discount, :last_total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity

    quantity.times do
      items << title
    end
    self.last_total = price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_total
  end

end
