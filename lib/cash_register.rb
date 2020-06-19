require 'pry'
class CashRegister

  attr_accessor :discount, :total, :last_transaction, :all_items

  def initialize(discount = 0)

    @discount = discount
    @total = 0
    @all_items = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity

    quantity.times do
      self.all_items << title
    end

    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
    #self.total = self.total * ((100.0 - discount)/100)
    self.total = ( self.total * ( 1.0 - (self.discount/100.0) ).to_f ).to_i

    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

  def items
    self.all_items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
