class CashRegister
  attr_accessor :total, :discount, :price, :item

  def initialize(discount=20)
    @total = 0
    @discount = discount
    @item = []
  end

  def total
    @total
  end

  def add_item(food, price, quantity=1)
    @total += (price * quantity)
    @price = price * quantity
    @item += Array.new(quantity, food)
  end

  def apply_discount
    discount = @discount / 100.0
    discounted = @total * discount
    @total = (@total - discounted).round
    if @total == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total = @total - @price
  end
end
