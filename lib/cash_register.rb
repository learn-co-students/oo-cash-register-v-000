class CashRegister



  attr_accessor :discount, :total, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []

  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total = total + (price*quantity)
    @transactions << (price*quantity)
    quantity.times{@items << item}
  end

  def apply_discount
    if @discount != 0
      @total = @total - @total*(@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @transactions[-1]
  end

end
