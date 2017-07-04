class CashRegister
  def initialize(discount=nil)
    @last_value = 0
    @total = 0
    @discount=discount
    @items = []
    #@discount = discount
  end

  attr_accessor :total, :last_value, :items
  attr_reader :discount

  def add_item(item, price, quantity = nil)
    if quantity == nil
      self.last_value = price
      self.total += price
      self.items << item
    else
      self.last_value = price
      self.total += price*quantity
      self.items.fill(item, @items.size, quantity)
    end
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      self.total = (self.total - (self.total*(self.discount/100.0))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.total-self.last_value
  end
end
