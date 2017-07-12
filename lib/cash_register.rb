require 'pry'
class CashRegister
  attr_accessor :discount, :items, :total, :last_transaction

  def initialize(discount=0)
    @discount = discount
    @items = []
    @total = 0
    @last_transaction = {}
  end

  def add_item(title, price, quantity=1)
    self.total = @total + price * quantity
    quantity.times {@items << title}
    @last_transaction = {
      title: title,
      price: price,
      quantity: quantity
    }
  end

  def apply_discount
    if @discount != 0
      @total = (@total - (@total * (@discount.to_f / 100))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction[:price] / @last_transaction[:quantity]
    @last_transaction[:quantity].times {@items.pop}
  end

end
