require 'pry'
class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :title, :price, :discount, :total, :items, :last


  def initialize(discount = 0)
    @cash_register = cash_register
    @last = last
    @discount = discount
    @total = total
    @cash_register_with_discount = cash_register_with_discount
    @items = items
    @items = []
    @total = 0
    cash_register_with_discount = 0
    if discount > 0
      @cash_register_with_discount = 20
    end
    @total
  end

  def self.total
    self.total
  end

  def add_item(title, price, number = 1)
    cost = price * number
    @title = title
    @price = price
    @total += cost
    @last = self.price
    number.times do
      @items << title
    end
    @total
  end

  def apply_discount
    if @cash_register_with_discount == 20
      @total = total.to_f
      @total = total * 0.8
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def self items
    stuff = self.items
    stuff.flatten!
    stuff
  end

  def void_last_transaction
    @total = @total - self.last
    @total
  end

end
