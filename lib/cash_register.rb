class CashRegister
  attr_accessor :total, :discount


  def initialize(employee_discount = 0)
    @total = 0.0
    @discount = employee_discount.to_i
    @item_array = []
    @last_item = []
  end #End for initialize

  def add_item(title,price,quantity = 1)
    @total = @total + price * quantity.to_i
    quantity.to_i.times{@item_array << title}
    @last_item = price
  end #End for add_item

  def apply_discount
    if @discount > 0
      total_with_discount = @total - @total * @discount/100
      @total = total_with_discount.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end#End for if/else statement
  end #End of apply_discount

  def items
    return @item_array
  end#end for item

  def void_last_transaction
    @total = @total - @last_item
  end#End for void

end #End for Class
