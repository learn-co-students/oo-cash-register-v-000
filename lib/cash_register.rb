
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.total += price
      self.items << title
    end
    # while quantity > 0
      # @total += price
      # @items << title
      # quantity -= 1
    # end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount == 0
    # if @discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (100 - self.discount)/100
      "After the discount, the total comes to $#{self.total}."
      # @total -= @discount
      # "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
