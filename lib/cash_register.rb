
class CashRegister
attr_accessor :total, :discount


  def initialize(discount=0)
    @discount=discount.to_f
    @total=0
    @items=[]
    @prices=[]
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    cost=price*quantity
    @total=(cost+@total)

    @items.concat([title] * quantity)
    @prices.concat([price] * quantity)
  end

  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=@total-(@total*(@discount/100))
      "After the discount, the total comes to $#{@total.to_i}."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    @total=@total-@prices.pop
    @items.pop

  end



end
