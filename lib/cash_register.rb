class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


class CashRegister
  attr_accessor :total, :discount, :list

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @list = []
  end

  def add_item(item, price, qty=1)
    qty.times do
      self.list << Item.new(item, price)
      self.total += price
    end
  end

  def apply_discount
    if self.discount > 0
      last_item = self.list[-1]
      new_price = last_item.price * (1 - self.discount.to_f / 100)
      self.total += new_price - last_item.price
      last_item.price = new_price
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.list.collect do | item |
      item.name
    end
  end

  def void_last_transaction
    last_item = self.list[-1]
    self.total -= last_item.price
  end

end
