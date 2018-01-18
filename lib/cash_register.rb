class CashRegister
  attr_accessor  :discount, :total
  def initialize(discount = 0)
    @total  = 0
    @discount = discount
  end
  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total  -= @total * @discount / 100
       "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end

end
