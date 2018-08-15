class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0.0)
    @all = []
    @prices = []
    @total = 0.00
    @discount = discount.to_f
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    @prices << price
    quantity.times do
      @all << title
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total * (@discount / 100))
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @total = @total - @prices.last
  end

end
