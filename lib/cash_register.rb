class CashRegister

  attr_accessor :discount, :total, :title, :price

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    @added_items = 0
  end

  def total 
    @total
  end

  def add_item(title, price, num = 1)
    @total += price * num
    i = 0
    while i < num
      @items << title
      i += 1
      @added_items = self.total
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @added_items
  end

end
