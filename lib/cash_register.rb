class CashRegister
  attr_accessor :total, :discount, :items, :item_prices

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @item_prices = []
  end

  def add_item(title, price, quantity=1)
    @total = @total+price*quantity
    quantity.times {@items << title}
    quantity.times {@item_prices << price}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = @total * (100-@discount)/100.0
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    last_item = @item_prices.last
    @item_prices.pop
    @total = @total - last_item
  end

end
