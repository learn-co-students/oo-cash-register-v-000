class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(*discount)
    @discount = discount[0]
    @total = 0
    @items = []
  end

  def add_item(title, price, *quantity)
    number_of_items = quantity[0]
    number_of_items = 1 if number_of_items == nil
    self.total += number_of_items*price
    number_of_items.times {@items << title}
    @last_transaction = number_of_items*price
  end

  def apply_discount
    if @discount != nil
      self.total = self.total*(100-discount)/100
      message = "After the discount, the total comes to $#{self.total}."
    else
      message = "There is no discount to apply."
    end
    message
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
