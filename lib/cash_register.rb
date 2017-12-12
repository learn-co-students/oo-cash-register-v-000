require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :prices, :quantity, :title, :last_transaction_amount

  def initialize(discount=0)#employee discount
    @total = 0#sets total to zero
    @discount = discount
    @items = []#array of items
  end

  def add_item(title, price, quantity = 1)
    @last_transaction_amount = price*quantity
    @total += @last_transaction_amount
    quantity.times { @items << title }
  end

  def apply_discount
    @total*@discount
  end


end
