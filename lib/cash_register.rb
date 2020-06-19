require 'pry'
class CashRegister

  attr_accessor :total, :discount, :last_item_amount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_amount = 0
  end

  def add_item(item, price, quantity=1)
    self.total += (price*quantity)
    self.last_item_amount = (price*quantity)
    quantity.times {|q| self.items << item}

  end

  def apply_discount
    if discount == 0 
      return "There is no discount to apply."
    else
      self.total *= (1 - (self.discount/100.to_f))
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    #binding.pry
    self.total -= self.last_item_amount.to_f
  end

end

