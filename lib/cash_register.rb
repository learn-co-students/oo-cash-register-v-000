class CashRegister
  attr_accessor :total, :discount, :price, :increases
   def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @increases= increases
    @items = []
    @transactions = []
  end
   def add_item(title, price, increases = 1)
    @total += price * increases
    @transactions << price
    i = increases
    until i == 0 do
      @items << title
      i -= 1
    end
  end
   def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
   def items
    @items
  end
   def void_last_transaction
    self.total = @total - @transactions.pop
  end
end
