class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity

    #first solution
    #self.items << Array.new(quantity, title)
    #self.items.flatten!

    #refactored solution
    quantity.times do
      self.items << title
    end

    self.last_price = price * quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= 1 - (self.discount / 100.0)
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.total -= self.last_price
  end

end
