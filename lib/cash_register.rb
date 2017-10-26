class CashRegister
  attr_accessor :discount, :total

  def initialize(em_discount = nil)
    @total = 0
    @discount = em_discount
    @title_list = []
    @price_list =[]
    @prev_quantity = 1
  end

  def add_item(title, price, quantity=1)
    i=0
    @prev_quantity
    until i == quantity
      @title_list<<title
      @price_list<<price
      @total+= price
      i+=1
    end
  end

  def apply_discount
    if @discount!=nil
      effective_disc = @discount/100.0
      @total -= @total*(effective_disc)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    i=0
    until i==@prev_quantity
      @title_list.pop
      @total -= @price_list.pop
      i+=1
    end
  end

  def items
    @title_list
  end
end
