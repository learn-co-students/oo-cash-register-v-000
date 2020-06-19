
class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @item = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times {@item << title}
    @last_transaction = price
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@discount/100.0)*@total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
