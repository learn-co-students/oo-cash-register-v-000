require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = 0)
    @total= 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity= 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    # to void a transaction, we need to remove quantity times, and we need to subtract the total
    @last_transaction = {
      price: price,
      quantity: quantity
    }
  end

  def apply_discount
    if @discount > 0
      @total -= ((@discount.to_f / 100) * @total)
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[:price] * @last_transaction[:quantity]
    @last_transaction[:quantity].times do
      @items.pop
    end
  end


end
