

class CashRegister

attr_accessor :total, :discount


  def initialize(number = 0)
    @total = 0
    @discount = number
    @items = []
  end

  def cash_register
    CashRegister.new
  end

  def cash_register_with_discount
    CashRegister.new(20)
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    count = 0
    while quantity > count
      @items << title
      count += 1
    end
  end

  def apply_discount
    if @discount > 0
      new_total = @total * 0.8
      @total = new_total.to_int
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end

end
