
class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @@items = []
  end

  def add_item(title, price, qty=1)
    @transaction = qty*price
    self.total += @transaction

    i = 0
    while i<qty
      @@items << title
      i += 1
    end
  end

  def apply_discount
    if self.discount
      @transaction = @transaction * self.discount / 100
      self.total = self.total - @transaction
      return "After the discount, the total comes to $#{self.total}."
  else
      return "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total = self.total - @transaction
  end

end
