
class CashRegister

  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price
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
    @total = @total - @last_transaction
  end
end
