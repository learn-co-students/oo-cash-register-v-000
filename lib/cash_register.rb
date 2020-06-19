class CashRegister
  attr_accessor :items, :discount, :total, :last_transction

  def intialize(discount=nil)
    self.total=0
    self.discount=discount
    self.items =[]
  end

  def add_item(title, amount, quantity=1)
    if discount != 0
      self.total += amount * quantity
      quantity.times do
        items << titels
      end
      self.last_transction = amount * quantity
  end

  def apply_discount
      if discount != 0
        self.total = (total*(100.0 - discount.to_f)/100).to_i
        "After the discount, the total comes to $#{self.total}."
      else
        "There is no discount to apply."
      end
  end

  def void_last_transaction
    self.total = self.total - self.last_transction
  end

end
