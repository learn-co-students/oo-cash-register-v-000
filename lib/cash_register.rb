class CashRegister
  attr_accessor :total, :discount

  @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@all = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    @@all.fill(item, @@all.length, quantity)
    @prev_total = @total
    @total += (price * quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      percent = @discount/100.to_f
      @total = @total - (@total * percent).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total = @prev_total
  end
end
