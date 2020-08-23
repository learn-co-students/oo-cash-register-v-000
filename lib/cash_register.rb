class CashRegister

  attr_reader :discount
  attr_writer :total

  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @@list = []
    @@list2 = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @title = title
    @quantity = quantity
    @price = price
    @price *= quantity
    @total += @price
    counter = 0
    while quantity > counter
      @@list << @title
      @@list2 << @price
      counter += 1
    end
  end

  def apply_discount
    if @discount > 0
      @discount = @discount.to_f
      @discount = @discount/100.0
      @temp = @price
      @temp = @temp.to_f
      @temp *= @discount
      @temp = @temp.to_i
      @price -= @temp
      @total = @price
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@list
  end

  def void_last_transaction
    last_index = @@list2.length
    last_index2 = last_index-1
    last_price = @@list2[last_index2]
    @total = @total.to_f
    @total -= last_price
    @total
  end
end
