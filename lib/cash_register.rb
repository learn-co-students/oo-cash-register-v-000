
class CashRegister
  attr_accessor :total, :discount, :item_array, :price


  def initialize(discount = nil) #initializes a discount as nil unless specified otherwise
    @total = 0
    @discount = discount
    @item_array = []
  end

  def total
    @total
  end

  def add_item(name, price, amount = 1)
    amount.times {@item_array << name}
    item_price = price * amount
    @total += item_price
    @price = price #stores the last price listed as the instance variable price

  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= (@discount.to_i * 0.01 * @total).round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total -= @price #subtracting the last item stored as "@price" from the total
  end

end
