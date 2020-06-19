
class CashRegister
  attr_accessor :total, :discount, :items, :last


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    i = 1
    while i <= quantity
      @items << title
      i += 1
    end
    @last = price*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total * (@discount.to_f / 100)
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end

end
