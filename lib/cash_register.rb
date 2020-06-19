class CashRegister
  attr_accessor :total, :discount, :last

  def items
    @items
  end

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount.to_f
    @items = []
  end

  def calc_discount
    result = nil
    result = @discount / 100
    result
  end

  def add_item(item, price, quantity = 1)
    @last = @total
    quantity.times do
      self.items << item
    end
    @total += (price * quantity)
  end

  def apply_discount
    @last = @total
    if @discount != 0
      discount = @total * self.calc_discount
      @total = @total - discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @last
  end

end
