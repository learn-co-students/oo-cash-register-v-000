class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :sum, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items_array = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = nil)
    @title = title
    @price = price
    @quantity = quantity
    if @quantity != nil
      @sum = @price * @quantity
      @quantity.times {@items_array << @title}
      @last_transaction = @price * @quantity
    else
      @sum = @price
      @items_array << @title
      @last_transaction = @price
    end
    @total += @sum
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      @total -= (@total * self.discount / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
