class CashRegister
  attr_accessor :discount, :total, :quantity, :last_transaction

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      if self.total == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{self.total}."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
