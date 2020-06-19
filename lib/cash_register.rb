class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    self.last_transaction = price*quantity
    counter = 0
    while counter < quantity
      @items << title
      counter +=1
    end
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * (1 - self.discount/100.00)
      "After the discount, the total comes to $#{self.total.floor}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
