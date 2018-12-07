class CashRegister
  attr_accessor :total, :discount, :items, :previous_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @previous_total = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times { @items << title }
    @previous_total = price
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @previous_total
  end
end
