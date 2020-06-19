class CashRegister

  attr_accessor :discount, :total
  @@all = []
  @@previous = 0

  def initialize(discount = 0)
    @@all = []
    @@previous = 0
    @total = 0;
    @discount = discount;
  end

  def total
    return @total
  end

  def add_item(title, price, quantity = 1)
    @@previous = @total
    @total = @total + (price*quantity)
    counter = 0;
    while counter < quantity
      counter = counter + 1
      @@all << title
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100-discount)/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    return @@all
  end

  def void_last_transaction
    @total = @@previous
  end

end
