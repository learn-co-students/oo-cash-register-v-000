class CashRegister

attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
        self.total += price
    end
      self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount > 0
    self.total -= self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
