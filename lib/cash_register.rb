class CashRegister

attr_accessor :discount, :total, :last_price
attr_reader :items


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last_quantity = quantity
    @last_price = price * quantity
    quantity.times { @items << item }
  end

  def apply_discount
    if self.discount > 0
      self.total -= self.total * self.discount / 100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= last_price
    @items.pop(@last_quantity)
  end
end
