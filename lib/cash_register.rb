require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction
  attr_reader :items

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title,price,quantity = 1)
    @total+=price*quantity
    @last_transaction = price*quantity
    quantity.times do
      @items << title
    end
    @items
  end

  def apply_discount
    @total = @total - @total*@discount/100
    if @discount == 0
      "There is no discount to apply."
    elsif @discount > 0
      "After the discount, the total comes to $#{@total}."
    else "Error"
    end
  end

  def void_last_transaction
    @total-=@last_transaction
  end

end

#binding.pry
