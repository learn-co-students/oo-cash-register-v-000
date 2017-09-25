

class CashRegister

  attr_accessor :total, :discount, :item, :last_transaction

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    return @total
  end

  def add_item (title, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << items
    end
    @last_transaction = price * quantity
  end


  def apply_discount
    return "There is no discount to apply." if discount == 0
    @total = @total - @total*(@discount*0.01)
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
