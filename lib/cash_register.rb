class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end

    self.total += price*quantity
    @last_item = price*quantity
  end

  def apply_discount
    actual_discount = @total*@discount/100
    @total = @total - actual_discount
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_item
  end

end
