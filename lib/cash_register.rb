require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = 0
  end

  def add_item(title,price,quantity = 1)
    @total += quantity*price
      i=0
      #quantity.times
    until i == quantity
      @items << title
      i+=1
    end
    @last_transaction = quantity*price
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * (@discount.to_f)/100).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
      @total = @total.to_i - @last_transaction.to_i
  end

end
