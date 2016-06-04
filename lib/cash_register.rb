class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, item_quanity = 1)
    @total += (price * item_quanity)
  end

  def apply_discount
    if self.discount != 0
      @total -= (@total * self.discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
end
