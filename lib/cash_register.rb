class CashRegister

  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, quantity = 1)
    self.total += (cost * quantity)
    quantity.times do
      @items << item
    end
    self.last_transaction = cost * quantity
  end

  def apply_discount
    @total = @total - (@discount*10)
    @discount > 0 ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end

  def void_last_transaction
    self.total = 0
  end

end
