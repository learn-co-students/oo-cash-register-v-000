
class CashRegister

  attr_accessor :total, :discount, :total_items, :current_amount

  def initialize(discount=0)
    @total = 0
    @discount = discount.to_f #.to_f to include for floats for cents
    @total_items = []
    @current_amount = []
  end

  #@total use += to keep a running tally of the total
  def add_item(title, price, quantity=1)
    @total_items << title.split * quantity
    combined_price = price.to_f * quantity.to_i
    @current_amount << combined_price
    @total += combined_price
  end

  #@discount/100 * @total to get the percentage to subtract
  def apply_discount
    @total = @total - @discount/100 * @total
    @discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
  end

  #take all the items and turn it into one array instead of multiply arrays
  def items
    @total_items.flatten
  end

  def void_last_transaction
    @total = @total - @current_amount.last
  end

end
