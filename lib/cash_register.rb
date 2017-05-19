class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount=nil)
    @discount = discount if discount # save on RAM!!!
    @total = 0
    @items = []
    @transactions = []
  end

  def add_item(item, value, quantity=1)
    @total += value * quantity
    quantity.times { @items.push(item) }
    @transactions.push([item, value, quantity])
  end

  def apply_discount
    if discount
      @total -= (@total * (@discount / 100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    transaction = @transactions.pop
    @total -= transaction[1] * transaction[2]
  end
end
