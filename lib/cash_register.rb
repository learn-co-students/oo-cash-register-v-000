require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, amount, number = 1)
      self.total += amount * number
      number.times do
        @items << title
      end
    self.last_transaction = amount * number
  end

  def item
    self.items
  end

  def apply_discount
    if discount != 0
      self.total = (total*((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    #binding.pry
    self.total = self.total - self.last_transaction
  end
end
