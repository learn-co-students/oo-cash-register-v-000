class CashRegister

  attr_accessor :total, :discount, :undo


  def initialize(discount = 0)
    @total = 0
    @undo = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @undo = (price * quantity)
    i = 0
    while (i < quantity) do
      @items << title
      i += 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      disc_percent = ((100 - @discount)/100.0)
      @total = @total * disc_percent
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @undo
  end

end
