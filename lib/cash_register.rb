class CashRegister
  attr_accessor :total
  attr_reader :discount, :items

  def initialize(num = 0)
    @total = 0
    @discount = num.to_f
    @items = []
  end

  def apply_discount
    @total = @total.to_f*((100-@discount)/100)
    @discount == 0 ?
    "There is no discount to apply." : "After the discount, the total comes to $#{@total.round}."
  end

  def add_item(item, cost, quantity = 1)
    @last_item_quantity = quantity
    @last_item_cost = cost*quantity
    @total += cost*quantity
    @items.concat([item]*quantity)
  end

  def void_last_transaction
    @total -= @last_item_cost
    @items.pop(@last_item_quantity)
  end

end
