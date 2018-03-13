class CashRegister

  attr_accessor :total, :discount, :running_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @running_total = []

  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)

    new_items = Array.new(quantity, item)
    (@items << new_items).flatten!
    each_price = Array.new(quantity, price)
    (@running_total << each_price).flatten!


    @total = quantity * price + @total


  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    elsif
      off = @discount.to_f / 100 * @total
      @total = (@total - off).to_i
        "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @running_total.pop
  end

  def items
    @items
  end

end
