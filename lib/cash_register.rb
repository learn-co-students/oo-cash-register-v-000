class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, optional_quantity = 1)
    @total += price * optional_quantity
    optional_quantity.times {@items << title}
    @last_transaction = price * optional_quantity
  end

  def apply_discount
    total = @total * discount/100
    @total -= total
    discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
