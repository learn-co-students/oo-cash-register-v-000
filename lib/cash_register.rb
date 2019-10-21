
class CashRegister
  attr_accessor :discount, :total, :item_list, :item_price_list



  def initialize(discount = 0, total = 0)
    @discount = discount
    @total = total
    @item_list = []
    @item_price_list = []
  end

  def add_item(title, price, quantity = 1)

    @total += price * quantity
    i=0
    while i  < quantity do
      @item_list << title
      @item_price_list << price
      i += 1
    end


  end

  def apply_discount
    if @discount > 0
      @total = @total * (100-@discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @item_list.pop
    @total -= @item_price_list.pop
    @total
  end
end
