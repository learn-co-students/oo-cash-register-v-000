class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, num=1)
    num.times do
      @items << item
    end
    price *= num
    @total += price
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @discount *= 0.01
    @discount = 1 - @discount
    @total *= @discount
    total_s = @total.to_s.chop!
    return "After the discount, the total comes to $#{total_s}"
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0.0
  end

end
