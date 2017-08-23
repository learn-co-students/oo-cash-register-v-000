class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @@items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @@items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    self.total *= (100-self.discount)/100
    self.discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
