require 'pry'

class CashRegister
attr_accessor :total, :discount, :items, :last_item

  @@receipt = []

  def initialize(disc = 0)
    # 'sets an instance variable @total on initialization to zero''
    # 'optionally takes an employee discount on initialization'
    self.total = 0
    self.items = []
    self.discount = disc
  end

  def add_item(item, price, *qty)
    if qty[0] != nil
      x = qty[0]
      x.times do
        self.items << item
        self.total = self.total + price
        @@receipt << [item, price] #self.last_item[item] = price
      end
    else
      self.items << item
      self.total = self.total + price
      @@receipt << [item, price] #self.last_item[item] = price
    end
  end

  def apply_discount
    if self.discount != 0
      new_price = (@@receipt[-1][1] - (@@receipt[-1][1] * @discount/100.00)).round
      self.total = (self.total - @@receipt[-1][1] + new_price)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @@receipt[-1][1]
  end

end
