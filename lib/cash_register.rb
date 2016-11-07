class CashRegister

  attr_accessor :total, :discount, :price, :title, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@cart = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
      @quantity.times do
        @@cart << @title
      end
    @most_recent_item = @price * @quantity
    @total += @price * @quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@cart
  end

  def void_last_transaction
    @total = @total - @most_recent_item
  end

end
