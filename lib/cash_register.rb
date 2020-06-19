class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

  def add_item(title,price,quantity = 1)
    quantity.times { @items << title}
    quantity.times { @prices << price}
    self.total += quantity * price
  end


  def apply_discount
    if discount !=0
    self.total -= 200
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = total - @prices.last
  end

end
