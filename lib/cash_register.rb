require 'pry'
class CashRegister

attr_accessor :total, :discount, :quantity, :title, :last_item, :last_item_price


  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @title = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @quantity = quantity
    @last_item = title
    @last_item_price = price
    if quantity > 1
      i = 0
      while i < quantity
        @title << title
        i+=1
      end
    end
    if quantity == 1
      @title << title
    end

  end

  def apply_discount

  if @discount == 0
      "There is no discount to apply."
  else
     discount = (@discount.to_f/100.to_f) * @total.to_f
     @total = @total - discount
    "After the discount, the total comes to $#{@total.to_i}."
   end
  end

  def items
    @title
  end

  def void_last_transaction
    @total = @total - @last_item_price

  end

end
