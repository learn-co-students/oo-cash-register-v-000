class CashRegister

  attr_accessor :total, :discount, :items, :item_amounts

  def initialize(discount=0)
    @total = 0.to_f
    @discount = discount
    @items = []
    @item_amounts = []
  end



  def add_item(item, price, quantity=1)
    self.total += (price.to_f * quantity.to_f)
    quantity.times {self.items << item}
    self.item_amounts << (price.to_f * quantity.to_f)
  end

  def discount_amount
    (self.discount.to_f / 100) * self.total
  end

  def apply_discount
    if self.discount != 0
      self.total -= self.discount_amount
      self.discount = 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.item_amounts.pop
  end
end
