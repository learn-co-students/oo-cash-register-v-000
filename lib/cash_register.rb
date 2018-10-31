class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items


  def initialize (discount = 0)   
    @discount = discount
    @total = 0   
    @items = []
  end


  def total 
    @total
  end


  def add_item (title, price, quantity = 1) 
    @last_transaction = price * quantity
    while quantity > 0
      @items << title
      quantity -= 1
    end
    @total = @total + @last_transaction
  end


  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      @total = (100.00 - @discount)/100.00 * @total
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items 
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
