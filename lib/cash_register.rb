class CashRegister
  attr_accessor :discount, :total, :last_item

  def initialize(discount=0)
    @item_list = []
    @last_item = 0
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @item_list << title
    end

    quantity.times do
      @last_item += price
    end

    @total += price * quantity
  end

  def apply_discount
    discount = (@discount.to_f / 100) * @total
    @total = @total - discount.to_i

    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= @last_item
  end

end
