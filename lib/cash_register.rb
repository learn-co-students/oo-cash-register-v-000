class CashRegister
  attr_accessor :total, :discount, :item_array, :item, :items, :price, :quantity


  def initialize(*discount)
   @total = 0
   @discount = discount[0]
   @items = []
  end

  def add_item(item, price, quantity=1)
    @item = item
    @price = price
    @quantity = quantity
    @total += price*quantity
    self.item = @item.split*@quantity
    @items << self.item
    @items.flatten!
  end

  def apply_discount
    if self.discount
    discount_percentage = 1 - @discount/100.00
    @total *= discount_percentage
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end


def void_last_transaction
   total = @total-@price*@quantity
   @total = total
   @total
end

end
