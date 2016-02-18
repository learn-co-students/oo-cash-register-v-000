class CashRegister
  attr_accessor( :total, :discount, :items)

  def initialize(amount=0)
    @total = 0
    @discount = amount
    @items = []
  end

  def add_item(item, value, quantity=1)
    counter = 0
    @items << item && counter += 1 until counter == quantity
    quantity != nil ? @total += value * quantity : @total += value  
  end

  def apply_discount
    @total -= @total * (@discount / 100.0)
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.round}."
  end

  def void_last_transaction
    self.total = 0
  end

end