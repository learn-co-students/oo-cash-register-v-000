class CashRegister
  attr_accessor :cash_register, :discount, :total, :last_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    self.total
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
      self.total = (total * ((100 - discount).to_f)/100).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
