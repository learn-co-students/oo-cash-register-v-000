class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

   def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    self.last_transaction = price * quantity
    quantity.times do
      items << title
  end
end

  def apply_discount
    if discount != 0
      self.total -= (discount*10)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
