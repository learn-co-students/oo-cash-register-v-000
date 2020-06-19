class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    return @total
  end

  def add_item(item, price, quantity = nil)
    if quantity != nil
      @items.fill(item, @items.length, quantity)
      price = price*quantity
    else
      @items << item
    end
    @price = price
    self.total += price
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      self.total -= (@total*(@discount/100.0)).round
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def self
    self
  end

  def items
    return @items
  end

  def void_last_transaction
    self.total -= @price
  end

end
