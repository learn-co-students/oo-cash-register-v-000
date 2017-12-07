class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction

  @@items = []

  def initialize(discount = 0)
    @discount  = discount
    @total = 0
    @@items.clear
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @total += @price * quantity
    @last_transaction = self
    while quantity > 0
      @@items << self.title
      quantity -= 1
    end
  end

  def apply_discount
    price = @total -= (@discount * 10)
    if @discount != 0
      message = "After the discount, the total comes to $#{price}."
    elsif @discount == 0
      message = "There is no discount to apply."
    end
    message
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @last_transaction.price
  end
end
