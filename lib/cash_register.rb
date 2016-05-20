class CashRegister
  attr_accessor :discount,:total, :title, :price, :qty, :items_array, :transaction
  attr_reader 

  def initialize (amt = 0)
    total = 0
    @total = total
    self.cash_register_with_discount(amt)
    self.items_array = []
  end

  def cash_register_with_discount(amt)
    self.discount = amt
  end

  def add_item(title, price, qty = 1)
    self.title = title
    self.price = price
    self.qty = qty
    self.transaction = (self.price * self.qty)
    self.total = self.total + self.transaction
    i = 0
    while i < qty do
      self.items_array << self.title
      i += 1
    end
  end

  def apply_discount
    if self.discount > 0.0 
      self.total = self.total-(self.total * (discount.to_f / 100))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    self.items_array
  end

  def void_last_transaction
    self.total -= self.transaction
  end
end #of class CashRegister