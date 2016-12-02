class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
      quantity.times do
        @items << item
        @last = (price * quantity).to_f
      end
      @items
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = total - (total * (discount / 100.to_f)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total -= @last
  end
end

