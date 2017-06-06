class CashRegister

  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :item, :recentitem

  def initialize(discount = nil)
      @total = 0
      @item = []
      @discount = discount
  end

  def cash_register_with_discount
      @discount
  end

  def add_item(item, price, quantity = 1)
    @recentitem = [item, price, quantity]
    while(quantity > 0) do
      @item << item
      self.total += price
      quantity = quantity - 1
    end
  end

  def apply_discount
    if discount
      @total = @total*(100-@discount)/100
      @total
      cash_register
    else
      return "There is no discount to apply."
    end
  end

  def cash_register
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @item
  end

  def void_last_transaction
    removeitem
  end

  def removeitem
    while(@recentitem[2] > 0) do
      @item.pop
      self.total -= @recentitem[1]
      @recentitem[2] = @recentitem[2] - 1
    end
  end
end
