class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end


  def add_item(item, price, quantity=1)
    i = 0
    self.price = price
    self.quantity = quantity
    self.total += self.price * self.quantity
    until i == quantity
      @items << item
      i += 1
    end
    @prices << price
  end

  def apply_discount
    if self.discount == 0
       "There is no discount to apply."
    else
      self.total = (self.total * (100 - self.discount) / 100)
       "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @prices.last
  end


end
