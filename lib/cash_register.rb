
class CashRegister
    attr_accessor :discount, :total, :quantity, :price, :title, :items, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end



  def add_item(title, price, quantity = 1)
      @price = price
      if quantity != 0
        total_price = quantity * price
        @total += total_price
        quantity.times do
        @items << title
      end
      else
        @total = @total += @price
        end
      @total
      @last_transaction = quantity * price
    end

  def apply_discount
    @discount = discount
  if @discount != 0
    @total = (@total * ((100.0 - discount.to_f)/100)).to_i
  "After the discount, the total comes to $#{@total}."
  else
     "There is no discount to apply."
  end
end

def void_last_transaction
  @total -= last_transaction
end

end
