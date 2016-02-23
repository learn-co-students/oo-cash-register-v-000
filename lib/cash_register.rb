class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @last_item = []
  end

  def add_item(title, price, quantity=1)
    @total = (price * quantity) + @total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total * (1 - (@discount/100.0)))
      "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end

end
