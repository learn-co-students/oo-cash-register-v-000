require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(item,price,quantity=1)
    i = 0
    self.price = price
    self.quantity = quantity
    self.total += self.price * self.quantity
    #binding.pry
    until i == quantity do
      @items << item
      i += 1
    end
    @prices << price


  end

  def discount_total
    self.total = (self.total * (100-self.discount)* 0.01).to_i
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      discount_total
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @prices.pop()
    #binding.pry
  end
end
