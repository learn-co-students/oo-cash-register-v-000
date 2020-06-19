class CashRegister

  attr_accessor :total, :discount, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    while(quantity > 0)
      @@items << item
      quantity -= 1
    end
    @last_transaction = price
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      savings = @total*@discount/100
      @total = @total - savings
      return "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
