require 'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @shopping_cart = []
  end

  def add_item(item, price, quantity=1)
    @quantity = quantity
    @total += price*quantity
    @quantity.times do
      @shopping_cart << item
    end
    @last_transaction = price*quantity
  end

  def apply_discount
     if discount != 0
       @total = total - (@discount.to_f / 100) * total
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def items
    @shopping_cart
  end

  def void_last_transaction
    @total = @total - @last_transaction
    @total
  end



end
