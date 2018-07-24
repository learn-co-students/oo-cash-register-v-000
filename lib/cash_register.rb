class CashRegister
  attr_accessor :discount, :total, :last, :items

  def initialize(discount=nil) #optionally arg
    @total = 0
    @discount = discount
    @items = []
  end
  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last = price * quantity
  end

  def apply_discount
    if @discount
      percent = @discount.to_f / 100
      @total -= @total * percent
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total  -= @last
  end
end
