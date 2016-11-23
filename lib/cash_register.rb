class CashRegister
  attr_accessor :discount, :total

  @@items = []
  @@transactions = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items.clear
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    transaction = (price * quantity)
    @@transactions << transaction
    quantity.times { @@items << title }
  end

  def apply_discount
    if @discount > 0
      @total = total - (total * (@discount * 0.01)).round
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = (@total - @@transactions[-1])
  end

end
