require "pry"
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction_amount = price * quantity
    @total += @last_transaction_amount
    quantity.times { @items << title }
  end

  def apply_discount
    #binding.pry
    discount = @total * (@discount.to_f/100)
    @total -= discount
    if discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= last_transaction_amount
  end
end
