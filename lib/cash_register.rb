class CashRegister
  attr_accessor :total, :discount, :items, :last_added

  def items
    @items
  end

  def initialize(emp_discount = 0)
    @discount = emp_discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    previous_total = @total
    @total = @total + price * quantity
    @last_added = price * quantity
    quantity.times do
      self.items << item
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total * @discount / 100.0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_added
  end

end
