
class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []

  end

  def self.total
    @total
  end

  def add_item(title, amount, quantity=1)
    quantity.times do
    @items << title
    end
    self.total += amount * quantity
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction

    self.total = self.total - self.last_transaction
  end

end
