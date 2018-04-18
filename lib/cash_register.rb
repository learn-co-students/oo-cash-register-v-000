class CashRegister

  attr_accessor :total, :discount, :items, :quantity, :price

  def initialize(*discount)
    @total = 0
    @items = Array.new
    @discount = discount[0].to_f
  end

  def add_item(item, price, *quantity)
    @price = price
    if quantity.empty?
      self.total += @price
      @items << item
    else
      @quantity = quantity[0].to_f
      self.total = @price * @quantity + @total
      @items << [item] * @quantity
    end
  end

  def apply_discount
    if !@discount.zero?
      applied_discount = 1.0 - @discount * 0.01
      @total *= applied_discount
      return "After the discount, the total comes to $#{@total.to_i}."
    end
    return "There is no discount to apply."
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total -= @price
  end
end
