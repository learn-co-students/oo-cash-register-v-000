class CashRegister
  attr_accessor :total, :discount, :subtotal, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    self.subtotal = price * quantity
    self.total += subtotal
  end

  def apply_discount
    if discount.zero?
      "There is no discount to apply."
    else
      self.total -= (total * (discount.to_f/100))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= subtotal
  end
end
