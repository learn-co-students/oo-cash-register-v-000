
class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, qty = 1)
    @transaction = qty * price
    @total += @transaction
    qty.times { @items << item }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @transaction
  end

end
