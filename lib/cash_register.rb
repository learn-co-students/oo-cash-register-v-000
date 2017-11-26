class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  @@cart = []
  @@prices = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

#  def self.cash_register_with_discount
#    @total = 20
#  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    @total += price*quantity
    quantity.times do @@cart << title
    end
    quantity.times do @@prices << price
    end
  end

  def apply_discount
    @@cart.clear
    if discount > 0
      @total-=((@discount.to_f/100)*@total).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@cart
  end

  def void_last_transaction
    @total-= @@prices.last
  end

end
