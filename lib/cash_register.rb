require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << item
    end
    self.last_item = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      num = self.discount.to_f / 100
      discount_rate = self.total * num
      self.total -= discount_rate
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end

end


# Hint #3: The void_last_transaction method will remove the last transaction from
# the total. You'll need to make an additional attribute accessor and keep track
# of that last transaction amount somehow. In what method of the class are you working with an individual item?
