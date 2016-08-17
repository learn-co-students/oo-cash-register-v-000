
class CashRegister
  attr_accessor :total, :discount

  CASHREGISTER = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0 + discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    #CASHREGISTER << { title => price }
  end

  def apply_discount
    @total = @total - @discount - 200
    "After the discount, the total comes to $#{@discount}."
  end
end
