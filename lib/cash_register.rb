require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :quantity, :title, :last_transaction_amount

  def initialize(discount = "")
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction_amount = price*quantity
    quantity.times {self.items << title}
  end

  def apply_discount
    discount = @discount*0.01*@total
      if @discount.to_i > 0
        "After the discount, the total comes to $#{@total = @total - discount.to_i}."
      else "There is no discount to apply."
      end
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
  end


end
