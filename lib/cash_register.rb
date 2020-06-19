class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
  end

  def add_item(title,price,quantity=1)
    @last=[title,price,quantity]
    quantity.times{
      @items<<title
      @total+=price
    }
  end

  def apply_discount
    if @discount>0
      @total-=(@discount*@total/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @last[2].times{
      @items.pop
      @total-=@last[1]
    }
  end




end
