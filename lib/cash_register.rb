class CashRegister
  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount=discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @last_total = @total
    @total += price*quantity
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*(1-@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @last_total
  end

end
