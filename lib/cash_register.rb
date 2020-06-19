class CashRegister
  attr_accessor :total,:discount


  def initialize(*discount)
    x = discount.join
    y =x.to_i
    @discount = y
    @total = 0
    @items = []
    @transactions = []
  end

  def total
    @total
  end

  def add_item(item,price,*quantity)

      x = quantity.join
      y =x.to_i
    if y > 0
      a = 0
      while a < y do
        @items << item
        a+=1
      end
      z = price * y
      @total += z
      @transactions << z
      else
      @items << item
      @total += price
      @transactions << price
    end
  end

  def apply_discount
    if @discount > 0
    disc = @discount/100.0
    total_disc = disc * @total
    @total-=total_disc
      if @total % 1 == 0.0
        @total = @total.to_i
      end
    "After the discount, the total comes to $#{@total}."
      else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

   def void_last_transaction
      last = @transactions[-1]
      x = last.to_s
      y =x.to_f
     @total-=y
     if @total % 1 == 0.0
        @total = @total.to_i
      end
   end



end

mac = CashRegister.new(20)
mac.add_item("mac",1000)
mac.add_item("PC", 200)
puts mac.apply_discount
puts mac.total
mac.void_last_transaction
puts mac.total

