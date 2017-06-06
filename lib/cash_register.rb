class CashRegister
  attr_accessor :discount, :items, :last_transaction, :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, number = 1)
  # (self).add_item!?
  # accepts a title and a price and increases the total
    self.total += price * number
    number.times do
      items << title
    end
    @last_transaction = price * number
  # also accepts an optional quantity
  # doesn't forget about the previous total
  end

  def apply_discount
    # the cash register was initialized with an employee discount:
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
    # applies the discount to the total price
    # returns success message with updated total
    # reduces the total

  # the cash register was *NOT* initialized with an employee discount:
    # returns a string error message that there is no discount to appply
  end

  def void_last_transaction
  # subtracts the last transaction from the total
  @total = self.total - last_transaction
  end

end
