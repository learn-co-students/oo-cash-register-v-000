require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction_amount

  @@all_items = []

  def initialize(discount = 0)
    @@all_items = []
    @total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @total = total + price*quantity
    @last_transaction_amount = price*quantity
    self.quantity = quantity
    quantity.times do |d|
      @@all_items << @title
    end
  end

  def apply_discount
    @total = (@total*(1-(self.discount.to_f)/100)).to_i
    if @total>0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@all_items
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
  end
end
