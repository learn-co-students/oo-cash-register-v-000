class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount=0)
    @total = 0
    @discount = discount.to_f
    @items = []
    @last = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {@items << title}
    @last = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (1-@discount/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last
  end
end
