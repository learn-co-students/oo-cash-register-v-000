class CashRegister
  attr_accessor :total, :title, :price, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
    @last_transaction = 0
  end
  def discount
    @discount
  end
  def add_item(title, price, quantity=1)
    @total += price*quantity
    x = 0
    while x < quantity
      @items << title
      x+=1
      @last_transaction = self.total
    end
  end
  def apply_discount
    if @discount > 0
      @total -= @total * @discount * 0.01
      return "After the discount, the total comes to $#{@total.to_int}."
    else
      return "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @last_transaction
  end

end
