require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

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
    price = @total -= (@discount * 10)
    if @discount != 0
       message = "After the discount, the total comes to $#{price}."
    elsif @discount == 0
       message = "There is no discount to apply."
    end
    message
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
    return total
  end
end
