require "pry"

class CashRegister

  attr_accessor :total, :discount, :cart, :current_transaction_amt

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    self.current_transaction_amt = price
    for i in 1..quantity do
    self.cart << title
  end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    discount = (@total * @discount)/100.0
    @total = @total - discount
    "After the discount, the total comes to $#{@total.to_s.chomp("0")}"
  end

  def items
    @cart
  end

  def void_last_transaction
    self.total -= self.current_transaction_amt
  end

end
