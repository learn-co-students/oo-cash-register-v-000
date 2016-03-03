class CashRegister
  attr_accessor :total, :title, :discount, :last_item_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @last_item_price = price
    self.total += price * quantity
    while quantity >= 1
      @items << self.title
      quantity -= 1
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * self.discount.fdiv(100)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item_price
  end
end
