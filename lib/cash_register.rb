class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items.fill(title, @items.size, quantity)
    @last_price = price
  end

  def apply_discount
    result = ""
    if @discount != nil
      @total = @total * ((100.00 - @discount)/100.00)
      result = "After the discount, the total comes to $#{@total.to_i}."
    else
      result = "There is no discount to apply."
    end
    result
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_price
  end
end
