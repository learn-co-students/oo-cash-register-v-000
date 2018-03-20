require "pry"
class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount=0)
    @cart = []
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@cart << title}
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total - (@total * (@discount * 0.01))
    # binding.pry
      if @discount <= 0
        "There is no discount to apply."
      else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = 0
  end

  def items
    @cart
  end
end
