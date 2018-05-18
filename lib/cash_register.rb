
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @@cart = []
    @@total_cart = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    count = 0

    while count < quantity
      @@cart << title
      @@total_cart << price
      count += 1
    end

    @@cart
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total.to_f - (@total * (@discount.to_f / 100.to_f))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    holder = []
    @@cart.each do |item|
      holder << item
    end
    holder
  end

  def void_last_transaction
    @total = @total - @@total_cart[-1]
  end

end
