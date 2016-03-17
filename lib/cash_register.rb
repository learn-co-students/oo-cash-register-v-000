class CashRegister
  attr_accessor :discount, :total


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_price = 0
  end

  def add_item(title, price, quantity=1)
    @total = @total + price * quantity
    quantity.times do
    @items << title
    end
    @last_price = price
  end

  def apply_discount
    @total = @total-(@total * @discount/100)
    if @discount != 0
    "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  end

  def items
    @items
  end

def void_last_transaction
  @total = @total - @last_price
  @total
end
end


