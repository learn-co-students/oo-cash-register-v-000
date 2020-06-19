
class CashRegister

  attr_accessor :total, :discount, :prev_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)

    self.total += quantity*price
    self.prev_transaction = price * quantity
    quantity.times do
      items << title
    end

  end

  def apply_discount
    if discount > 0
      self.total -= (discount.to_f/100 * self.total).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total -  self.prev_transaction
  end
end #end CashRegister class
