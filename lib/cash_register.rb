require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    self.total += (price*quantity)
    #binding.pry
    quantity.times do
      self.items << title
    end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      decimals = self.total * (discount/100.to_f)
      self.total -= decimals
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @last_transaction = self
    @total = 0
  end
end
