class CashRegister

  attr_accessor :total, :discount, :item, :items, :transaction

  def initialize(employee_discount = 0)
    @discount = employee_discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @item = title
    @transaction = (price * quantity)
    @total += @transaction
    quantity.times do
      @items << self.item
    end
  end

  def apply_discount
    if @discount != 0
      @total = ((@total*(100-@discount))/100)
      "After the discount, the total comes to $#{@total}."
    else
      @total
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.transaction
  end
end