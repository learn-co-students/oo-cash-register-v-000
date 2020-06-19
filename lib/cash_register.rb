class CashRegister

  attr_accessor :total, :items, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @last_item = last_item
  end

  def total
    @total
  end

  def add_item(name, price, amount = 1)
    @total += price*amount
    amount.times do
      @items << name
    end
    @last_item = price * amount
  end

  def apply_discount
    if @discount > 0
      @discount = 0.01 * (@discount*@total)
      @total = @total - @discount
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item
  end


end
