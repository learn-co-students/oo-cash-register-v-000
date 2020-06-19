
class CashRegister
  attr_accessor :total, :discount, :items, :prices

  def initialize(discount = 0)
    @discount = discount.to_f
    @total = 0
    @items = []
    @prices = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity

    quantity.times do 
      self.items << item
      self.prices << price
    end
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total * (1 - discount/100) 
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= prices.pop
  end



end