class CashRegister
  attr_accessor :total, :discount, :itemslist, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @itemslist = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last = price*quantity
    i = quantity
    while i > 0 do
      @itemslist.push(title)
      i -= 1
    end
  end

  def apply_discount
    if discount > 0
    @total = @total*(0.8)
    @total = @total.to_i
    "After the discount, the total comes to $#{@total}."
  else "There is no discount to apply."
    end
  end

  def items
    self.itemslist
  end

  def void_last_transaction
    @total -= @last
  end
end
