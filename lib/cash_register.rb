class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do # enumerate item titles into @items array for later
      @items << title
    end
    self.last_transaction = price * quantity #Store last_transaction here because this is where price/quantity etc is used
  end

  def apply_discount
    if discount != 0 # check if there is a discount
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i # apply discount %
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items # list all items(stored in instance variable as an array)
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction #remove last_transaction
  end

end
