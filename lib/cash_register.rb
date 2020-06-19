class CashRegister

  attr_accessor :discount, :total, :items, :old_total, :old_items

  def initialize( discount=0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(item, price, quantity = 1)
    @old_total = @total
    @old_items = @items
    self.total += price * quantity
    new_items = Array.new(quantity, item)
    @items.concat(new_items)
  end

  def apply_discount
    self.total *= (100 - @discount).to_f / 100
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @old_total
    @items = @old_items
  end

end
