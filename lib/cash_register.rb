require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :last_item
  #attr_reader :title, :price, :quantity

  def self.all
    @@all
  end

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @@all = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    @total = @total + (price * quantity)
    quantity.times do 
      @@all << title
    end
    @last_item = price
    #binding.pry
  end

  def apply_discount
    if @discount
      @total = @total * (100 - @discount) * 0.01
      "After the discount, the total comes to $#{"%g"%@total}."
    else
        "There is no discount to apply."
    end
  end
  def items
    @@all
  end
  def void_last_transaction
    @total = @total - @last_item
  end
end
