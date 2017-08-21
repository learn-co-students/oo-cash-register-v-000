class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_cost

  def initialize(discount=0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times{@items << title}
    @last_cost = price
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_cost
  end

  def apply_discount
    @total *=(1 - (@discount/100))
    if @discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
end
