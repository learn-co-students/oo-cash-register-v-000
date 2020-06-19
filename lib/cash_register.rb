class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize (discount = 0.0)
    @total = 0
    @discount = discount.to_f
    @items = []
  end

  def add_item (item, cost, quantity = 1)
    @total += cost*quantity
    while quantity > 0
      @items << item
      quantity -= 1
    end
    @last = cost
  end

  def apply_discount
    if discount == 0.0
      "There is no discount to apply."
    else
      @total = @total*(1 - @discount/100)
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last
    @items.pop
  end
end
