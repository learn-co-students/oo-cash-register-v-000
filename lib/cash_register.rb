

class CashRegister

  attr_accessor :discount, :total, :items, :last_item
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = {cost: nil, amount: nil}
  end

  def add_item(title, price, quantity=1)
    self.last_item[:cost] = price*quantity
    self.total += self.last_item[:cost]
    self.last_item[:amount] = [title] * quantity
    self.items += self.last_item[:amount]
  end

  def apply_discount
    @total -= (@total * (@discount / 100.0))
    if self.discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item[:cost]
  end
end