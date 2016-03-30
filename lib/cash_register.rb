class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = 0)
    @total = total
    @total = 0
    @discount = discount
    @items = []
  end

   def add_item(title,price,quantity = 1)
    @title = title
     quantity.times do
    @items << @title
     end
    @total += price * quantity
  end

  def apply_discount
    @total = @total - (@discount*10)
    @discount > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def void_last_transaction
    @total = 0
  end
end
