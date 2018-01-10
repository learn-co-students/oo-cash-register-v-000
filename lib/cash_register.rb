class CashRegister
  attr_accessor :total, :discount, :item_list, :last_transaction_amount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = []
    @last_transaction_amount = 0
  end

  def add_item(title, price, quantity=1)
    self.last_transaction_amount = price*quantity
    self.total += price*quantity
    while quantity >= 1
      self.item_list << title
      quantity -= 1
    end
  end

  def apply_discount
    if discount > 0
      @total = @total - (@total * discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction_amount
  end

  def items
    self.item_list
  end
end
