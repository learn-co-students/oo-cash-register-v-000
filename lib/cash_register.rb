class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
       @total = 0
       @discount = discount
       @items = []
  end


  def add_item(item, price, quantity =1)
    self.total += price * quantity
    @last_transaction = price * quantity
  quantity.times do
     @items << item
   end
  end

  def apply_discount
    discounted = @total * @discount / 100
    @total = @total - discounted
    if @discount > 0
       "After the discount, the total comes to $#{@total}."
    else @discount = 0
       "There is no discount to apply."
    end
  end

def items
  @items
end

def void_last_transaction
    @total = @total - @last_transaction
  end

end
