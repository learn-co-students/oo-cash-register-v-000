class CashRegister
  attr_accessor :total, :last_transaction, :items, :discount

  def initialize(discount=0)
    @total = 0
    @previous_total = 0
    @items = []
    @discount = discount
  end

  def add_item(item_name, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << item_name
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = (@total * ((100 - @discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end



end
