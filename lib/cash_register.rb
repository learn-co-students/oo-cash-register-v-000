
class CashRegister
  attr_accessor :discount, :item, :price, :total, :last_t, :last_i, :last_q


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @item = item
    i = 0
    while i < quantity
      @items << item
      i = i + 1
    end
    @price = price
    @last_t = @total
    @last_i = item
    @last_q = quantity
    @total = @total + price * quantity

  end

  def total
    @total
  end

  def items
    @items
  end
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else

      @total  = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end
  def void_last_transaction
    @total = @last_t
    i = 0
    while i < @last_q
      @items.pop()
      i = i + 1
    end
  end
end
