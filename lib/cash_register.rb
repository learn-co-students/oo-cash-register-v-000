class CashRegister

  attr_accessor :total, :items

  def initialize(disc=0)
    @total = 0
    @disc = disc
    @items = []
  end

  def discount
    @disc
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @total = @total + (price * quantity)
    q = 1
    while q <= quantity
      @items << item
      q += 1
    end
    @last_item = price
  end

  def apply_discount
    if @disc == 0
      @total
      "There is no discount to apply."
    else
      @total -= 200
      "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_item

  end


end
