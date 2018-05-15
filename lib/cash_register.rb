class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total
  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
  end
  def add_item(name, cost, number = 1)
    self.total += cost * number
    number.times {self.items << name}
    self.last_transaction = [name, cost, number]
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    self.last_transaction[2].times {self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)}
  end
end
