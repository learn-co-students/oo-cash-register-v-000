class CashRegister

  attr_accessor :total, :discount, :all, :previous_price, :previous_quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all = []
    @previous_price = 0
    @previous_quantity = 0
  end

  def add_item(title,price,quantity=1)
    self.total = self.total + (price * quantity)
    self.previous_price = price
    self.previous_quantity = quantity
    quantity.times do
      self.all << title
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    end
    self.total = self.total.to_f - (self.total.to_f * (self.discount.to_f)/100)
    "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    self.all
  end

  def void_last_transaction
    self.total = self.total.to_f - (self.previous_price.to_f * self.previous_quantity.to_f)
    self.total = self.total.to_i
  end

end
