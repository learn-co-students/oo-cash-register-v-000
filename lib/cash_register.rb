class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = nil
  end

  def add_item(title, price, quantity = 1)
    for i in 1..quantity do 
     @items << title
    end
    @total = @total + (price * quantity)
    @last_transaction = price
    @total
  end

  def apply_discount
    if discount == nil
      return "There is no discount to apply."
    end
    @total = @total - (@total/(100/discount))
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
   @total = @total - @last_transaction
   @total
  end

  

end 