class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    while quantity > 0
      @items << [title,price]
      quantity -= 1
    end
  end

  def apply_discount
    @total = @total * ((100 - @discount).to_f / 100.00)
    if @discount != 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    list = []
    @items.each do |item|
      list << item[0]
    end
    return list
  end

  def void_last_transaction
    last = @items[-1][1]
    @total -= last
  end

end
