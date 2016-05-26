class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(employee_discount = 0)
    @total = 0
    @items = []
    @transaction = []
    self.discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times {self.items << title
                    self.transaction << price}
  end

  def apply_discount
    if self.discount != 0
      self.total -= self.total*self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.transaction.pop
  end

end
