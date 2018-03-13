require 'pry'
class CashRegister
attr_accessor :total, :discount, :quantity, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    subtotal = price * quantity
    quantity.times do
      items << title
    end
    self.total += subtotal
    self.last_transaction = price * quantity
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
    self.total = total - last_transaction
  end

end
