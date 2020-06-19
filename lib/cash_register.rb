class CashRegister

  attr_accessor :total, :discount, :last_transaction


  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @total += price * quantity
    i = 0
    while (i < quantity)
      @items << title
      i += 1
    end
    @last_transaction = price *quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      off_total = @total * discount/100 #Getting amount off the total price
      @total -= off_total
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
