class CashRegister
  attr_accessor :total, :discount, :title, :price, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @shopping_cart = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    quantity.times do
      @shopping_cart << @title
    end
    cost = @price * quantity
    @total += cost
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= (@discount.to_f/100) * @total
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @shopping_cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
