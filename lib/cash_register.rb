class CashRegister

  attr_accessor :total, :discount, :items, :last_amt

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_amt = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_amt  = price
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100-@discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def item
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_amt
    @total
  end
end
