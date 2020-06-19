class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(item, price, quantity=1)
    @transactions << price * quantity
    @total += (price * quantity)
    quantity.times {@items << item}
  end

  def apply_discount
    if discount > 0
      @total -= (@total * (discount/100.00)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transactions.pop
    @items.pop
    @total
  end
end
