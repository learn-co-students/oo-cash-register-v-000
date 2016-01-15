class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = @items || []
  end

  def add_item(item, cost, quantity=1)
    @last_transaction_amount = cost * quantity
    @total += @last_transaction_amount
    quantity.times { @items << item }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply." 
    else
      @total -= @total * @discount/100.to_f
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction_amount
  end

end
