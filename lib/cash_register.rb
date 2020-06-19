class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { @items << title }
    self.last = price * quantity
    title
  end

  def apply_discount
    @total -= @total * @discount / 100
    if self.discount == 0
        "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

#  def items
  #  self.items = []
#  end

  def void_last_transaction
    self.total -= self.last
  end
end
