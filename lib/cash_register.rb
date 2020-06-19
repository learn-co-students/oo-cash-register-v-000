class CashRegister
  attr_accessor :total, :discount, :items, :last_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_amount = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_amount = price
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

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_amount
    @total
  end

end
