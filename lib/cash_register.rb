class CashRegister

  attr_accessor :total, :items, :last_item
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    i = 0
    while i<quantity
      @items << title
      i += 1
    end
    @last_item = price
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      discount = (100 - @discount).to_f / 100
      self.total *= discount
      return "After the discount, the total comes to $#{@total.to_int}."
    end
  end
  
  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item
    @total
  end

end