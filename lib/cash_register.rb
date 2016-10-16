class CashRegister

  attr_accessor :total, :void_last_transaction
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @total += price * quantity
    @aa = []
    @aa = [price, quantity]
  end

  def apply_discount
    if self.discount > 0
      self.total -= (self.total * self.discount/100)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @aa[0] * @aa[1]
  end
end
