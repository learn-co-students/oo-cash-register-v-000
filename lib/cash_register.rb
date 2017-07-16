class CashRegister

  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @item_list = []
  end

  def add_item(item, price, quantity = 1)
    @last_transaction = price*quantity
    @total += price*quantity
    @item_list.fill(item,@item_list.size,quantity)
  end

  def apply_discount
    if @discount > 0
      @total -= ((discount/100.0)*total).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
