class CashRegister
  attr_accessor  :total, :discount, :tittle, :price, :quantity, :apply_discount, :items, :last_transaction



  # default in discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(tittle, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times do
      items << tittle
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (@total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
