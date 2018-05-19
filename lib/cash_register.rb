class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @items += [item] * quantity
    @last_transaction = price
    @total += (price * quantity)
  end

  def apply_discount
    if discount.nil?
      return "There is no discount to apply."
    else
      @total -= ((@discount.to_f/100) * @total)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    return @total -= @last_transaction
  end
end
