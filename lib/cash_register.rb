class CashRegister
  attr_accessor :total, :discount, :last_item_price, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    quantity.times do @items << item end
    @last_item_price = price * quantity
    @total += @last_item_price
  end

  def apply_discount
    @total = @total - (@total * @discount/100)
    if @discount > 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
    @total = @total - @last_item_price
  end

end
