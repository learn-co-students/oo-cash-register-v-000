
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(*discount)
    @total = 0
    @@all = []
    @discount = discount[0]
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    quantity.times do
      @@all << title
    end
    @total = @total + price*quantity
    @total
  end

  def apply_discount
    if @discount != nil
      @total = @total*(0.8)
      return "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total = @total - price*quantity
  end

end
