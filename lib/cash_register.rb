
class CashRegister
  attr_accessor :total, :items, :discount, :last


  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(name, price, number = 1)
    holder = price * number
    number.times do
      items << name
    end
    self.total += holder
    self.last = holder
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= total * @discount / 100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = total - last
  end


end
