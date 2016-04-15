class CashRegister
  attr_accessor :total, :employee_discount, :cart, :price

  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
    @cart = []
  end

  def discount
    @employee_discount
  end


  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    (1..quantity).each {|i| @cart << item}

  end

  def apply_discount
    @total -= (@employee_discount.to_f / 100) * @total 
    if self.discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price
  end

end
