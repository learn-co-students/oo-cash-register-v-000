class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    self.discount = discount
    self.total = 0
    self.items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    until quantity == 0
      self.items << [title, price, quantity]
      quantity -= 1
    end
  end

  def apply_discount
    if self.discount != 0
      self.total *= (1-(self.discount/100.00))
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.collect do |item|
      item[0]
    end
  end

  def void_last_transaction
    @total -= @items[-1][2]*@items[-1][1]
    @items.pop
  end
end
