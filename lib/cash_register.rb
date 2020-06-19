class CashRegister
  attr_accessor :total, :discount, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, quantity = 1)
    quantity.times {@items << item}
    @last_transaction = cost*quantity
    @total += cost*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total*(@discount/100.00)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
