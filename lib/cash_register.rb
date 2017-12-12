class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    @last = price*quantity
    i=1
    until i==quantity+1
      @items << title
      i+=1
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total*(@discount/100.0)
      return "After the discount, the total comes to $#{@total.round}."
    elsif @discount == 0
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last
  end
end
