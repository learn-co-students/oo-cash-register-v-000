class CashRegister
  attr_accessor :total, :discount, :price

  def initialize(discount= nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1) #5.times do
    quantity.times do
      @items << item
    end

    @item_total = (price * quantity)

    @total += @item_total
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      discount = @total * self.discount.to_f/100
      self.total -= discount.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @item_total
  end
end
