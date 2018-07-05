class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)
    quantity.times do
        self.items<<title
    end
    self.last_transaction=price*quantity
    self.total+=price*quantity
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total=self.total-(self.total*self.discount/100)
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -=self.last_transaction
  end
end
