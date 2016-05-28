class CashRegister

  attr_accessor :total, :discount, :last_total

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def add_item(title, price, quantity = 1)
    i = 1
    while i <= quantity
      @item_array << title
      i += 1
    end
    self.total = self.total + (price * quantity)
    self.last_total = self.total
  end

  def apply_discount
    if (self.total * (1 -(self.discount / 100.0))).round == self.total
      return "There is no discount to apply."
    else
      self.total = (self.total * (1 -(self.discount / 100.0))).round
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    self.total = self.last_total
    self.total = 0
  end

end
