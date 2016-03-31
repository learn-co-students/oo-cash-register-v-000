class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, quantity=1)
    self.total += cost * quantity
    quantity.times do
      @items << item
    end

    self.last_transaction = cost * quantity

  end

  def apply_discount
    @total = @total - (@discount*10)
    @discount > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def void_last_transaction
    @total = 0
  end

end

