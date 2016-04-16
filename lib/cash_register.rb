require 'pry'


class CashRegister
  attr_accessor :total, :discount, :last_transaction



  def initialize(discount = "")
    @total = 0
    @discount = discount
    @@items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    total_price = price * quantity
    @last_transaction = total_price
    @total += total_price
      if quantity > 1
        x = 0
        while x < quantity
          @@items << title
          x += 1
        end
      else
        @@items << title
      end
  end

  def apply_discount
    if @discount.to_i > 0
      @total -= (@total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end

  # binding.pry
