require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
    @total +=  @last_transaction
    
  end

  def apply_discount
    if @discount >= 1
      @total -= (@total * (@discount/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -=  @last_transaction
  end

end
