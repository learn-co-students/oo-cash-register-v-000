class CashRegister

  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @item = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
      self.total = @total + price * quantity
      quantity.to_i.times {@item << title}
      self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    else
      @total
      return "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    self.total = @total - self.last_transaction
  end




end
