class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << item
    end
    self.last_transaction = amount * quantity
  end

# this part I took from a google search... no clue wtf's going on here...
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end