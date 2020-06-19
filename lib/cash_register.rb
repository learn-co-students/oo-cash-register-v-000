
class CashRegister
  attr_accessor :total, :discount, :items, :prices, :final_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def total
     @total
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
      quantity.times do
         @items << title
      end
      @final_transaction = @total
  end

 def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total)*(1 - (@discount/100.0))
      "After the discount, the total comes to $#{@total.round}."
    end
  end

  def void_last_transaction
    @total = 0
  end
end


