class CashRegister
  attr_accessor :total, :items, :discount, :item_data

  def initialize(discount=nil)
    @total = 0.0
    @items = []
    @discount = discount
    @item_data = {}
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do @items << title end
    @item_data[title] = price
  end

  def apply_discount
    if @discount != nil
      discount_total = @total * @discount / 100
      @total -= discount_total
      return "After the discount, the total comes to $#{@total % 1 == 0 ? @total.round : @total.round(2)}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @item_data[items.last].is_a? Numeric
      @total -= @item_data[items.last]
      @items.pop
    end
  end
  def total
    @total.round(2)
  end
end
