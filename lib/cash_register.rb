class CashRegister
  attr_accessor :total, :discount, :name, :quantity
  @@item = []
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(name, price, quantity = 1)
    # quantity times.do {@@item << name}
    @name = name
    @quantity = quantity
    # self.items
    @lastprice = price * quantity
    @total += price * quantity

  end

  def apply_discount
    if @discount == nil
      puts "There is no discount to apply."
    else
      @total = Float(@total) * (1 - @discount)
      puts "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    self.quantity times {@@item << self.name}
    @@item
  end

  def void_last_transaction
    @total -= @lastprice
  end

end
