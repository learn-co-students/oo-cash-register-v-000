class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty=1)
    @total += price * qty
    qty.times do
      @items << title
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total*@discount/100
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
    @items = 0
  end

end
