class CashRegister
  attr_accessor :discount, :total, :last_trans, :items

  def initialize(int = 0)
    int == 0 ? self.total=int : self.discount=int; self.total=0
    @items ||= []
  end

  def add_item(item, price, quantity = 1)
    self.total += price*quantity
    quantity.times{ @items << item}
    @last_trans = [item, price, quantity]
  end

  def apply_discount
    if self.discount == nil
      self.discount = "There is no discount to apply."
    else
      self.total = (self.total * (1 - (self.discount/100.0))).round
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = total - self.total
    @items = @items - self.items
  end
end
