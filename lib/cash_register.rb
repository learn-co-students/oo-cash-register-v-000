class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @most_recent = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @most_recent << price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @most_recent.pop
    @items.pop
    @total
  end
end
