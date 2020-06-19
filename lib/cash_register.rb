require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(k = 0)
    @total = 0
    @discount = k
    @items = []
    @transaction = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times{ @items << title}
    @transaction << price
    price = price * quantity
    @total += price
  end

  def apply_discount
    if self.discount > 0
      @total = @total - (@total/100) * @discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @transaction.pop
    @total
  end

end
