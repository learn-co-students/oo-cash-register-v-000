class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    self.total=(@total + (@price * @quantity))
    @items.fill(@title, @items.size, @quantity)
    @last_transaction = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_in_decimals = @discount / 100.0
      self.total=(self.total * (1 - discount_in_decimals))
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.total=(self.total - @last_transaction)
  end
end
