
class CashRegister
  attr_accessor :total, :discount, :items, :lastTransaction
  def initialize(initDiscount=0)
    @total = 0
    @discount = initDiscount
    @items = []
    @lastTransaction=0
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      items << title
    end
    self.total += (price*quantity)
    @lastTransaction=@total
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = (@total * ((100 - @discount)/100.to_f)).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    @total -= @lastTransaction
  end
end
