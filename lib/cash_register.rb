require('pry')

class CashRegister

  attr_accessor :total, :discount, :items


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(name, price, quantity = 1)
    price *= quantity
    @total += price
    quantity.times do
      @items << name
    end
    @last_transaction = price
  end

  def apply_discount
    if @discount != 0
      percent_of_total = (100.0 - @discount.to_f) / 100.0
      @total = @total.to_f * percent_of_total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
