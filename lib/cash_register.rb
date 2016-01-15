require "pry-byebug"
class CashRegister
  attr_accessor  :total, :discount, :items, :quantity, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      self.total += price
      items << item
    end
    @last_transaction = (price * quantity)
  end



  def apply_discount
    if discount != 0
      self.total = total * (100 - discount) / 100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end

end
