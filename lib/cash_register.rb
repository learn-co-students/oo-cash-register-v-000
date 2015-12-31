class CashRegister
  attr_accessor :total, :last_transaction

  @@all_items = []

  def initialize(discount=0)
    @@all_items.clear
    @total = 0
    @discount = discount
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity=1)
    quantity.times{@@all_items << item}
    @total += price * quantity
    @last_transaction = @total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = @total - (@total * (@discount * 0.01)).to_i
    "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@all_items
  end

  def void_last_transaction
    @total = @total - @last_transaction
    @total
  end

end
