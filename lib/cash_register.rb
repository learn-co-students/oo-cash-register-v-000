class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount unless discount.nil?
  end

  def add_item(item_name, item_price, quantity = 1)
    quantity.times { @items << item_name }
    @previous_total = @total
    @total += item_price * quantity
  end

  def apply_discount
    if @discount
      @total -= (@total * (@discount / 100.00)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      'There is no discount to apply.'
    end
  end

  def void_last_transaction
    @items.delete_at(-1)
    @total = @previous_total
  end
end
