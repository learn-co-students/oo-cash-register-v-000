class CashRegister

  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    if quantity
      quantity.times { @items << title }
      @transaction = price*quantity
    else
      @transaction = price
      @items << title
    end
    self.total += @transaction
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= @total * discount / 100
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @transaction
  end
end
