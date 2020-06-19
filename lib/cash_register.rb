class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)

    i=0
    while i<quantity do
      @items << title
      i +=1
    end
    @last_transaction = price*quantity
    @total += price*quantity
  end

  def apply_discount

    if discount
      @total = @total*(100-@discount)/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end

  end

  def void_last_transaction

    @total = @total - @last_transaction

  end


end
