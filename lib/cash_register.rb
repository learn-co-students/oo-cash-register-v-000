require "pry"
class CashRegister
  attr_accessor :total, :discount, :price, :items 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total = @total + price * quantity
    quantity.times do
      @items << title
    end
    @total
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      #binding.pry
      @total = (((100.0 - discount.to_f)/100) * @total).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @total -= @price
  end
end
