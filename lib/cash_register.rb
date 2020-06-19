class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += @price * quantity
    count = 1
    while quantity >= count
      count += 1
      @items << item
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @price * @quantity
    @quantity.times do
      @items.pop
    end
  end

end
