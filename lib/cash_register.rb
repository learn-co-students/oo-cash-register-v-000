class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price,qty=1)
    qty.times do 
      @items << item
    end
    @last_transaction = qty * price
    @total += qty * price
  end

  def apply_discount
    if(@discount == 0)
      "There is no discount to apply."
    else
      @total -= @total * (@discount * (100 ** -1))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end