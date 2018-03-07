class CashRegister

  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @price = price * quantity
    @total = @total + @price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@discount * 10)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @price
  end

end
