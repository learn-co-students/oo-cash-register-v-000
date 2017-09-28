class CashRegister

  attr_accessor :total, :discount, :items, :apply_discount, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items= []
  end

  def items
    @items
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    total_discount = @total*@discount/100
    @total = @total - total_discount
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
