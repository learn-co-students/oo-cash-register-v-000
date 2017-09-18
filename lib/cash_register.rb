class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
    @last_transaction = last_transaction
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    if quantity == 1
      self.items << item
    else
      quantity.times do
        self.items << item
      end
    end
    self.total += price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * self.discount/100.to_f
      self.total = self.total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.last_transaction = self.total
    self.total -= last_transaction
  end

end
