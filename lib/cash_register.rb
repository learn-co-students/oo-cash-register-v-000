
class CashRegister

  attr_accessor :total, :discount, :last_item, :item_list

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item_list = []
  end

  def items
    self.item_list
  end

  def add_item(title, price, quantity = 1)
    price = price * quantity
    self.total += price
    self.last_item = price
    apply_discount
    quantity.times do
      self.item_list << title
    end
  end

  def apply_discount
    if discount
      self.total = self.total - ((self.total * self.discount)/100)
      self.discount = 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_item
  end
end
