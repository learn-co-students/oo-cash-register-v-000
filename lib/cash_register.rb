class CashRegister
  attr_accessor :items, :discount, :total
  
  def initialize(discount=0)
    @total = 0
    @items = []
    self.discount = discount
  end

  def add_item(item, price, quantity=1)
    @last = [@total, @items]
    @total += price*quantity
    i = 0
    while i < quantity do 
      @items << item
      i += 1
    end
  end

  def apply_discount
    if discount != 0
      discount = @total * self.discount / 100
      @total -= discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items = @last[1]
    @total = @last[0]
  end

end