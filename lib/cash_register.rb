class CashRegister

  @@items = []

  attr_accessor :total, :items, :previous_transaction, :discount

  def initialize(discount = 0)
    @@items.clear
    self.total = 0
    @discount = discount
    self.apply_discount
  end # initialize

  def total
    @total
  end # total

  def add_item(item_name, price, quantity = 1)
    @item = item_name
    @previous_total = self.total
    self.total = self.total + (price * quantity)
    @previous_transaction = price * quantity

    while quantity > 0
      @@items << @item
      quantity = quantity - 1
    end

  end # add_item

  def apply_discount(discount = 0)
    if @discount == 0
      self.total
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * @discount/100)
      "After the discount, the total comes to $#{self.total}."
    end
  end # apply_discount

  def items
    @@items
  end

  def void_last_transaction
    self.total = self.total - @previous_transaction
  end

end
