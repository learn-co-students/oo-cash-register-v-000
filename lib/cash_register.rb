class CashRegister
  attr_accessor :discount, :items, :total, :previous_total

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
    self.previous_total = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100 - discount.to_f)/100)).to_f
        "After the discount, the total comes to $#{self.total.to_i}." # > shouldn't it just be .to_f? In the very likely event some change is involved?
      else
        "There is no discount to apply."
      end
  end

  def void_last_transaction
    self.total = self.total - self.previous_total
  end

end
