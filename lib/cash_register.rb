require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @items = []
    @last_transaction = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)

    quantity.times do
      @items << title
      @last_transaction << price
    end
  end

  def apply_discount
    if discount.nil?
      return "There is no discount to apply."
    else
      @total = @total - (@total * discount.to_f/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - last_transaction.pop
  end
end
