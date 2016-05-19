class CashRegister

  attr_accessor :total, :discount, :all_items, :tally

  def initialize(disc=0)
    @total = 0
    @discount = disc.to_f
    @all_items = []
    @tally = []
  end

  def add_item(title, price, quantity=1)
    @all_items << title.split * (quantity)
    total_price = price.to_f * quantity.to_i
    @tally << total_price
    @total += total_price
  end

  def apply_discount
    @total = @total - @discount/100 * @total
    @discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
  end

  def items
    @all_items.flatten
  end

  def void_last_transaction
    @total = @total - @tally.last
  end

end