
class CashRegister
  attr_accessor :total, :discount, :lastprice, :lastitem, :lastquan
  @@all = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@all << self
    @@items = []
  end

  def add_item(title, price, quantity=1)
    self.total = self.total + (price*quantity)
    count = 0
    while count < quantity
      @@items << title
      count += 1
    end

    @lastitem = title
    @lastprice = price
    @lastquan = quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * (100-self.discount)/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total = self.total - self.lastprice
  end
end