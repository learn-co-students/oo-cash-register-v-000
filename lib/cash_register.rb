require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :add_transaction, :discount_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_i
    @items = []
    @add_transaction = 0
    @discount_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @title = title
    counter = 0
    while counter < quantity
      @items << @title
      counter += 1
    end
    @price = price
    @quantity = quantity
    @add_transaction = @price * @quantity
    @total += @add_transaction
    @total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @discount_transaction = (@total * @discount) / 100
      @total = @total - @discount_transaction
      "After the discount, the total comes to $#{total}."
    end
  end


  def void_last_transaction
    @total = @total - @add_transaction
  end

end
