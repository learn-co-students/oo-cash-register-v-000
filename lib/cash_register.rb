require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :cart, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    quantity.times do |x|
      @cart << title
    end
    self.total += price * quantity
    @last_transaction << price * quantity
  end

  def apply_discount
    unless @discount == nil
      self.total -= @discount*10
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    self.cart
  end

  def void_last_transaction
    binding.pry
    self.total -= @last_transaction[-1]
    @last_transaction.pop
  end

end
