class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @items ||= []

    quantity.times do
      self.items << title
    end

    self.total += price*quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = (self.total * (100 - self.discount)/100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.total
  end

end