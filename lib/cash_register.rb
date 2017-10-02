require 'pry'
class CashRegister

  @@all = []

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @@all << self
    @last_transaction = @@all[-1]
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end

  def apply_discount
    message = ""
    if self.discount != 0
      self.total -= (discount.to_f/100.0) * total.to_f
      message = "After the discount, the total comes to $#{self.total.to_i}."
    else
      message = "There is no discount to apply."
    end
    message
  end

  def items
    @items
  end

  def void_last_transaction
    last_transaction.total = 0
  end

end
