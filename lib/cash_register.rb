
class CashRegister
  attr_accessor :total, :discount, :title,:last_transaction, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total - (total * (discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
    self.total
  end
end
