class CashRegister
  attr_accessor :total, :discount, :last
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { items << item }
    item_price = price * quantity
    self.last = item_price
    self.total += item_price
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= (Float(discount) / 100 * total).to_i
      "After the discount, the total comes to $#{total}."
    end  
  end
  
  def void_last_transaction
    self.total -= last
  end
  
  protected :last
end