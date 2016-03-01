class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
    @total = @total + @last_transaction
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items 
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end