require 'pry'

class CashRegister

attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    #100 discount is 5%. How do I figure out the new total?
    if  discount !=0
      self.total = self.total - (discount/100.0 * self.total)
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end

end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
