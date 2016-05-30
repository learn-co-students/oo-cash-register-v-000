class CashRegister

  attr_reader :discount
  attr_accessor :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @p = price * quantity
    @total += @p
    if quantity == 1
     @items << name
    else
      quantity.times do 
        @items << name
      end
    end
  end
  
  def apply_discount
    return "There is no discount to apply." if @discount == 0
    percentage = ".#{@discount}".to_f
    discount = @total * percentage
    t = @total - discount
    @total = t
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total -= @p
  end





end
