class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(item, price, qty=1)
    qty.times { @items << item }
    @total += price * qty
    @transactions << @total
  end

  def apply_discount
    return "There is no discount to apply." unless @discount

    @total = @total * (100 - @discount) / 100
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transactions.last
  end
end
