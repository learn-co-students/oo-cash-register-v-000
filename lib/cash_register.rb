class CashRegister

  attr_accessor :total, :discount, :title



  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_i
    @@items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price*quantity
    quantity.times {self.items << title}
  end

  def apply_discount
     if @discount == 0 || nil
       "There is no discount to apply."
    else
      @discount = @discount*(0.01)
      @total = @total - @total*@discount
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items 
  end

  def void_last_transaction
    self.total = self.total - @price

  end

end
