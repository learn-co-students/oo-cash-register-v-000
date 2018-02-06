class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @total= total
    @total =0
    @discount = discount
    @items =[]
  end

  def add_item(title, price, quantity = nil)

    @last_transaction = price

    if quantity
      quantity.to_i.times {@items << title}
      @total += price * quantity
    else
      @items << title
      @total += price
    end

    #!quantity ? @total +=price : @total += (price*quantity)
  end

  def apply_discount
    if discount > 0
      @discount = discount/100.0
      @total = total - (@discount*total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

def void_last_transaction
  @total -= @last_transaction
end

end
