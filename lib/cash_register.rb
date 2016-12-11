class CashRegister
  attr_accessor :discount, :total, :items, :last

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
    @last = {}
  end

  def add_item(title, price, qty = 1)
    @last[:items] = []
    (1..qty).each do
      @items << title
      @last[:items] << title
    end
    @last[:price] = price
    @total += price * qty
  end

  def apply_discount
    if @discount != nil
      @total -= (@total * (@discount.to_f / 100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last[:price]
    @last[:price] = 0
    @last[:items].each {@items.pop}
  end
end
