require 'pry'

class FoodItem
  attr_accessor :title, :quantity, :price

  def initialize(title, quantity, price = 0)
    @title = title
    @quantity = quantity
    @price = price
  end
end

class CashRegister
  attr_accessor :total, :items, :discount, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    i=0
    while i< quantity
      @items << title
      i+=1
    end
    @total = @total + price*quantity
    @transaction << @total
  end

  def items
    @items
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total*@discount/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @transaction[-1]
  end
end
