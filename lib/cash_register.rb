require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity = 1)
    @last_transaction = price * quantity
    @total += self.last_transaction 
    new_arr = Array.new(quantity,title)
    @items << new_arr
    @items.flatten!
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."

    else
      @total -= (self.total.to_f * (self.discount.to_f/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end
