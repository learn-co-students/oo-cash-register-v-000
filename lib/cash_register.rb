class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 0)
    @last_item = price
    if quantity > 0
      @total += price * quantity
      quantity.times { |i| @items << title }
    else
      @total += price
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - ( @discount.to_f / 100 * @total )
      new_total = @total.to_int
      return "After the discount, the total comes to $#{new_total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_item
  end


end
