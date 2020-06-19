#receive a list of items and add them up
#total items
#void last transaction

class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,cost,quantity = 1)
    @total += (cost * quantity)
    @last_transaction = (cost * quantity)
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    @total -= ((@total * @discount) / 100)
    if @discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
    @items.pop
  end

  def items
    @items
  end

end
