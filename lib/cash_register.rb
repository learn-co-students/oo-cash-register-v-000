class CashRegister

  attr_accessor :total, :discount, :last_total
  @@items = []


  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity

    self.last_total = self.total
    self.total += (price * quantity)
  end

  def apply_discount
    if self.discount != 0
      self.total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    while @quantity > 0
      @@items << @title
      @quantity -= 1
    end
    @@items
  end

  def void_last_transaction
    self.last_total
  end

end
