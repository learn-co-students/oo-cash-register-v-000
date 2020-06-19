class CashRegister
  attr_accessor :discount, :price, :quantity, :total, :title, :last_tran

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @@all_items = []
  end

  def total
    return @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @title = title
    @last_tran = @price * @quantity
    @total = @total + @last_tran
    @@all_items.fill(@title, @@all_items.size, @quantity)
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @disc_amt = (@price * @quantity * @discount * 0.01).floor
      @price = @price - @disc_amt
      @total = @total - @disc_amt
      return "After the discount, the total comes to $#{@price}."
    end
  end

  def items
    @@all_items
  end

  def void_last_transaction
    @total = @total - @last_tran
  end

end
