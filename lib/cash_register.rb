class CashRegister
  attr_accessor :items, :prices, :total, :discount, :quantities, :last_total

  def initialize(discount = 0)
    @total = 0
    @items = []
    @prices = []
    @quantities = []
    @discount = discount
  end

  def self.total
    return @total
  end

  def add_item(name, price, quantity = 1)
    @items += Array.new(quantity) {name}
    @last_total = @total
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total.to_f - ((@discount.to_f * 0.01) * @total.to_f)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @last_total
  end

end
