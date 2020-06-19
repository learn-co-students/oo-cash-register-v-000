class CashRegister
  attr_accessor :total,:discount,:items,:previous_items,:previous_amt

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item,price,qty=1)
    @total += price * qty
    qty.times {|i| @items << item}
  end
  def apply_discount
    @total = @total * (1- (@discount * 0.01))
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end
  def void_last_transaction
    @total = 0
    @items = []
  end

end
