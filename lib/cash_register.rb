class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @total += (price * quantity)
    @quantity = quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    @total = @total.to_f
    if @discount > 0
      @total = (@total - ((@discount.to_f / 100.0) * @total))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price
    @total
  end

end
