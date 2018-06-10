class CashRegister

 attr_accessor :total, :last_transaction, :items, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    @total -= @total.to_f * @discount.to_f / 100
    if @discount == 0
       "There is no discount to apply."
    else
       "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
