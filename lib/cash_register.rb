class CashRegister
  attr_accessor :total, :discount, :cart, :last_transaction

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times{@cart << title}
    @total += (price * quantity)
    @last_transaction = (price * quantity)
  end

  def apply_discount
    @total *= ((100.0 - @discount)/100)
    @discount == 0 ? "There is no discount to apply." :
      "After the discount, the total comes to $#{@total.to_int}."
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @last_transaction
    ########## missing function to remove the last transaciton items from cart #######
  end

end
