class CashRegister

attr_accessor :total, :discount, :item, :quantity, :last
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total = total
    @@items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @@items.fill(item, @@items.size, quantity)
    @last = [item, price, quantity]
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (self.total * (1-(self.discount.to_f/100)))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total -= @last[1] * @last[2]
  end



end

