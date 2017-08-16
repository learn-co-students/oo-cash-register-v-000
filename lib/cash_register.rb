require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    count = quantity
    while count > 0
      self.items << title
      count -=1
    end
    self.transactions << [title, price, quantity]
  end

  def apply_discount
    if discount != 0
      self.total -= (self.total.to_f*(discount.to_f/100.to_f))
      # binding.pry

      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end

  end

  def void_last_transaction
    last_transaction = self.transactions[self.transactions.length-1]
    trans_title = last_transaction[0]
    trans_price = last_transaction[1]
    trans_quant = last_transaction[2]

    self.items.pop
    self.total -= trans_price * trans_quant
    binding.pry
    self.transactions.pop

  end




end
