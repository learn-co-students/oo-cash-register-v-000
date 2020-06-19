class CashRegister
  attr_accessor :total, :discount, :items, :last


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times{@items << title}
    @last = price
  end

  def apply_discount
    @total = @total*(100-discount)/100
    if discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last
  end


end
