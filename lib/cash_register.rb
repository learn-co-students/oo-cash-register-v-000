class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = nil
    @last_item_quantity = 0
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << item
    end
    @last_item_price = price
    @last_item_quantity = quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (@total.to_f * (@discount.to_f / 100.to_f)).to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @last_item_quantity.times do
      @items.pop
      @total -= @last_item_price
    end
    @last_item_quantity = 0
    @last_item_price = nil
    return "Last transaction voided"
  end

end

test_reg = CashRegister.new(20)
test_reg.add_item("tacos", 2, 200)
puts test_reg.total
puts test_reg.apply_discount
puts test_reg.total
