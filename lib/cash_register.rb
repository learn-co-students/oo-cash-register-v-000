class CashRegister
  attr_accessor :total, :prior_trans, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @prior_trans = price * quantity
    @total += @prior_trans
    quantity.times {@items << item}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total = (total * (1 - @discount.to_f / 100)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total -= @prior_trans
  end

end
