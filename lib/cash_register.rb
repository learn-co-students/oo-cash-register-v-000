class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=0)

    if quantity > 1
      quantity.times do
        self.items << title
      end
      self.total += price * quantity
    else
      self.items << title
      self.total += price
    end
    @last_price = total
  end

  def apply_discount
    if self.discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= @last_price
    total
  end

end
