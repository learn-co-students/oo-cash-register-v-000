class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @@items << title
    @price = price
    @quantity = quantity
    cost = @price * @quantity
    @total += cost
  end

  def apply_discount
    if @discount == 0.0
      puts "There is no discount to apply."
    else
      @total -= (@discount.to_f/100) * @total
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
  end

end
