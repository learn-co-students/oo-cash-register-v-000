class CashRegister

  attr_accessor :total, :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items = []
    @@price = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times { @@items.push(title)}
    quantity.times { @@price.push(price)}
    @@last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total/5
      "After the discount, the total comes to $#{@total}."
    end 
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @@last_transaction
  end

end
