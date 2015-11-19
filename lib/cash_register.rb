class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prev_price = 0
  end

  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items

  def add_item(item,price,quantity=1)
    @prev_price = @total.to_f
    @total += (price * quantity)
    @items += [item]*quantity
  end

  def apply_discount
    if @discount == 0
      output = "There is no discount to apply."
    else
      @total *= 1-@discount/100.to_f
      @total = @total.to_i
      output =  "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    @total = @prev_price.to_f
    @items.pop
  end
end
