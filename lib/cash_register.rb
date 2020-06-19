class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}
    @last_item << price * quantity
  end

  def apply_discount
    @total = @total * (1 - discount/100.to_f)

    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item.pop
  end
end
