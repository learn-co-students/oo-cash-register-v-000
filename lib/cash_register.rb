class CashRegister
  attr_accessor :total, :discount, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times {@item << title}
    @price = price
  end

  def apply_discount
    # discount to i div by 100.0 = percent; percent times total
    if discount != 0
      self.total = @total - ((discount.to_i / 100.00) * @total)
      p "After the discount, the total comes to $#{self.total.to_i}."
    else
      p "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total = @total - @price
  end

end
