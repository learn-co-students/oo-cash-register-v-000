class CashRegister
  attr_accessor :total, :discount, :most_recent_price, :items

  def initialize(discount=0)
    @total=0
    @items=[]
    @discount=discount
  end

  def add_item(title,price,quantity=1)
    @most_recent_price=price
    quantity.times{self.items<<title}
    @total+=price*quantity
  end

  def apply_discount
    if discount==0
      "There is no discount to apply."
    else
      @total-=(discount*10)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total-=@most_recent_price
  end

end
