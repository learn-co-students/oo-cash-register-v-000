
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,price,n=1)
    @items_last = @items
    @total_last = @total
    n.times do
      @items.push(item)
    end
    @total += price * n
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = @items_last
    @total = @total_last
  end

end
