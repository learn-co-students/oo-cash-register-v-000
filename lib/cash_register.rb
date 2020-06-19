class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @items_w_price = {}
  end
  
  def discount
    @discount = 20
  end

  def add_item(item, price, qty = 1)
    qty.times{@items << item}
    @items_w_price[item] = price
    @total += price * qty
  end

  def apply_discount
    percentage = (100.00 - @discount) / 100.00
    @total *= percentage
    if @discount != 0
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    last_item = @items.pop
    @total -= @items_w_price[last_item]
  end
end
