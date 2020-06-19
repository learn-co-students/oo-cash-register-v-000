
class CashRegister

attr_accessor :total, :title, :price, :quantity, :items, :lastamount



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def cash_register_with_discount
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @lastamount= price * quantity
    @total = @total + @lastamount
    counter = 0
    while counter < quantity
    @items << title
    counter += 1
    end
  end

  def apply_discount
    x = @discount / 100.00
    y= @total * x
    @total = @total - y
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @lastamount
    @total
  end

end
