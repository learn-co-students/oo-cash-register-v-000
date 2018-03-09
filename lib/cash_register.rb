require'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :trx

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @trx = []
  end

  def add_item(item, price, qty=1)
    self.total += price * qty
    self.trx << price * qty
    qty.times do
      self.items << item
    end
    self.total
  end

  def apply_discount
    if !self.discount.nil?
      self.total *= (1-self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= self.trx.last
  end

end
